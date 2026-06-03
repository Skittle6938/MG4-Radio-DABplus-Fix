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

### Option A — Direct APK install (recommended)

1. Download **[Radio_patched_signed.apk](https://github.com/Skittle6938/MG4-Radio-DABplus-Fix/raw/main/apk/Radio_patched_signed.apk)**
2. Copy it to a USB stick and plug it into the head unit's USB port
3. Open the APK with the built-in file manager to install it

> **A reboot may be required after installation.** Hold the Home button for approximately 20 seconds until the screen turns off and the unit restarts.

### Option B — ADB over USB

ADB is disabled by default on the MG4 head unit. You need to enable it first using **ADB_util**, a tool developed by Leon Kerman:

> [XDA thread — MG4 Electric AAOS 9 playing (and possibly other MG models)](https://xdaforums.com/t/mg4-electric-aaos-9-playing-and-possibly-other-mg-models.4697712/post-90591053)

Once USB debugging is enabled:

1. Connect a USB cable between your PC and the head unit
2. Run:
   ```bash
   adb push Radio_patched_signed.apk /data/local/tmp/radio_patch.apk
   adb shell pm install -f /data/local/tmp/radio_patch.apk
   ```
   The `-f` flag is required to replace the system app with the patched version.

> **A reboot may be required after installation.** Hold the Home button for approximately 20 seconds until the screen turns off and the unit restarts.

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
