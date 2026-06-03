# MG4 Radio — DAB+ Slideshow Art on Launcher

Patch for the SAIC MG4 (EH32 LL firmware) head unit that fixes missing DAB+ station artwork on the stock launcher home screen.

![DAB+ artwork displayed on the MG4 launcher home screen](screenshots/launcher-with-artwork.jpg)

*Virgin Radio artwork displayed live on the launcher home screen — song title included.*

---

## What this fixes

### DAB+ slideshow art on the launcher

On the stock MG4 head unit, when you listen to a DAB+ station that broadcasts artwork (station logo, album cover, show image…), the image appears correctly **inside the radio app** — but the launcher home screen always shows a generic placeholder instead of the actual artwork.

After this patch, **the artwork appears directly on the launcher home screen**, along with the station name and current song title, without having to open the radio app.

### Bonus: instant artwork on station switch

DAB+ stations only broadcast their slideshow image every 10–30 seconds. Without caching, you'd have to wait up to half a minute each time you switch stations for the image to appear on the launcher.

This patch also **remembers the last image received for each station** and restores it immediately the next time you tune to that station, so the artwork is visible right away.

### Image cropping

Some stations broadcast rectangular images with black bars on the sides (e.g. France Info). The patch automatically center-crops these to a clean square before sending them to the launcher, so images always fit the launcher widget correctly without distortion.

### Auto-play radio on power-on

On the stock head unit, the radio does not automatically resume playback when the car is powered on — it only does so if the radio was the last active audio source. If you were using Bluetooth or CarPlay before parking, silence greets you on the next start.

This patch **automatically starts radio playback every time the car powers on**, regardless of what was playing before. The feature is enabled by default and can be toggled at any time inside the app:

> **Radio app → ⋮ Menu → RDS Settings → DAB Service Following** (switch repurposed as the auto-play toggle)

When the switch is **on** (default): radio resumes automatically ~300 ms after ACC-on, using the same band and station that was last active.  
When the switch is **off**: behaviour is identical to the stock app — no auto-resume.

---

## How it works (technical)

The stock radio app receives slideshow bitmaps via `onDabSlideShowChanged()` in `RadioService$DabTunerCallback` and forwards them to its own UI — but never publishes them to the Android `MediaSession` (`ALBUM_ART` metadata key). The launcher reads artwork exclusively from `MediaSession`, so it never received anything.

**This patch (radio APK only) adds:**
- Forward of each received bitmap to `MediaSession` via `IRadioMBSCallback.setSessionMetadataDabBitmap()`
- Per-station disk cache (`dab_<serviceId>.jpg`) — saved on receive, restored on tune
- Center-crop of landscape images to square before sending to launcher/cache
- Proper synchronization (`synchronized(mMBSCallbacks)`) and null-guards matching the existing code patterns
- Auto-play on ACC-on: hooks into `handleAccOffStatus()` and `lambda$onCreate$0$RadioService()` to schedule playback resume via the existing `RadioService$4` (FM/AM) and `RadioService$5` (DAB) Runnables
- UI toggle: repurposes the `DAB Service Following` switch in the RDS Settings dialog to read/write the `auto_play_on_start` SharedPreferences key

Modified files: `RadioService$DabTunerCallback.smali`, `RadioService.smali`, `RadioRDSSettingsDialog.smali`. The launcher APK is untouched.

---

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

---

## Reverting

```bash
adb shell pm uninstall com.saicmotor.radio
```
The system original under `/system/priv-app/Radio_eh32_ll/` is restored automatically.

---

## Firmware compatibility

Tested on: `Radio_eh32_ll`  
Check your version before installing:
```bash
adb shell dumpsys package com.saicmotor.radio | grep versionName
```
