# MG4 Radio Fixed — DAB+ Slideshow Art on Launcher

Patches for the SAIC MG4 (EH32 LL firmware) head unit that fix the missing DAB+ slideshow art on the stock launcher home screen.

## What this fixes

On the stock MG4 head unit, the DAB+ radio app displays slideshow images (album art, show logos, etc.) inside the radio app itself — but these images never appear on the launcher home screen, which only shows the default placeholder icon.

**Root cause:** `onDabSlideShowChanged()` in `RadioService$DabTunerCallback` forwarded the bitmap to the radio app's own UI but never published it to the Android `MediaSession` (`ALBUM_ART` metadata key). The launcher reads from `MediaSession` — so it never received the image.

**Additional fix:** `iv_dab_album` in the launcher layout had `scaleType="fitXY"` which distorts non-square images. Changed to `centerCrop` and increased size from 160dp to 200dp.

## Patches

### Radio APK — `patches/radio/`
**File:** `smali/com/saicmotor/radio/service/RadioService$DabTunerCallback.smali`  
**Method:** `onDabSlideShowChanged(Landroid/graphics/Bitmap;)V`

Added after `setDabSlideShow(bitmap)`:
- Null-check on `getCurrentDabStation()` — avoids wiping MediaSession metadata on null station
- `synchronized(mRadioMBSCallbacks)` block — matches existing locking pattern
- Loop over `IRadioMBSCallback` listeners calling `setSessionMetadataDabBitmap(station, bitmap)`
- Per-iteration `try/catch` — one bad callback can't break the whole loop
- `catchall` handler — guarantees `monitor-exit` on unexpected throw

### Launcher APK — `patches/launcher/`
**Files:** `res/layout/tab_media_layout.xml` (×3 variants)

- `iv_dab_album`: `scaleType` changed from `fitXY` → `centerCrop`
- `iv_dab_album`: size changed from `dp_160` → `dp_200` (and `dp_220` → `dp_200` for w1778dp)

## Installation

Requires ADB access to the head unit.

```bash
# Push and install Radio patch first
adb push apk/Radio_patched_signed.apk /data/local/tmp/radio_patch.apk
adb shell pm install -f /data/local/tmp/radio_patch.apk

# Then Launcher
adb push apk/Launcher_patched_signed.apk /data/local/tmp/launcher_patch.apk
adb shell pm install -f /data/local/tmp/launcher_patch.apk
```

## Reverting

```bash
adb shell pm uninstall com.saicmotor.radio
adb shell pm uninstall com.saicmotor.launcher
```
The system originals under `/system/priv-app/` are restored automatically.

## Firmware compatibility

Tested on: `Radio_eh32_ll` / `Launcher_eh32_ll`  
Check your versions before installing:
```bash
adb shell dumpsys package com.saicmotor.launcher | grep versionName
adb shell dumpsys package com.saicmotor.radio | grep versionName
```
