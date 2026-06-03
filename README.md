# MG4 Radio Fixed — DAB+ Slideshow Art on Launcher

Patch for the SAIC MG4 (EH32 LL firmware) head unit that fixes missing DAB+ slideshow art on the stock launcher home screen.

## What this fixes

On the stock MG4 head unit, the DAB+ radio app displays slideshow images (album art, show logos, etc.) inside the radio app itself — but these images never appear on the launcher home screen, which only shows the default placeholder icon.

**Root cause:** `onDabSlideShowChanged()` in `RadioService$DabTunerCallback` forwarded the bitmap to the radio app's own UI but never published it to the Android `MediaSession` (`ALBUM_ART` metadata key). The launcher reads from `MediaSession` — so it never received the image.

## Patch — Radio APK only

**File:** `patches/radio/smali/com/saicmotor/radio/service/RadioService$DabTunerCallback.smali`  
**Method:** `onDabSlideShowChanged(Landroid/graphics/Bitmap;)V`

Added after `setDabSlideShow(bitmap)`:
- Null-check on `getCurrentDabStation()` — avoids wiping MediaSession metadata on null station
- `synchronized(mRadioMBSCallbacks)` block — matches existing locking pattern
- Loop over `IRadioMBSCallback` listeners calling `setSessionMetadataDabBitmap(station, bitmap)`
- Per-iteration `try/catch` — one bad callback can't break the loop
- `catchall` handler — guarantees `monitor-exit` on unexpected throw

## Installation

Requires ADB access to the head unit.

```bash
adb push apk/Radio_patched_signed.apk /data/local/tmp/radio_patch.apk
adb shell pm install -f /data/local/tmp/radio_patch.apk
```

**A reboot may be required after installation.** To reboot the head unit, hold the Home button for approximately 20 seconds until the screen goes off and the unit restarts.

## Reverting

```bash
adb shell pm uninstall com.saicmotor.radio
```
The system original under `/system/priv-app/Radio_eh32_ll/` is restored automatically.

## Firmware compatibility

Tested on: `Radio_eh32_ll`  
Check your version before installing:
```bash
adb shell dumpsys package com.saicmotor.radio | grep versionName
```
