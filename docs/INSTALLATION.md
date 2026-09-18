# Installation guide

## Before you begin

1. This guide is only for the tested Xiaomi 14 Ultra global configuration described in the README.
2. Back up photos and retain a working copy of your current camera/root setup.
3. Ensure KernelSU Next and Vector LSPosed are already functioning before changing modules.
4. Do not uninstall the stock or Primrose camera package as part of this workflow.

## LSPosed scope

The companion module should be enabled only for:

- Xiaomi Camera / Primrose camera package
- Xiaomi Gallery
- Xiaomi Media Editor

Avoid broad or system-wide scope. Restart affected apps after an in-place module update.

## M3 workflow

1. Open camera and select Leica Essential.
2. Capture the image in the supported M3 mode.
3. Open the new Essential image in Gallery.
4. Use the Leica processing entry, then select **Start** to create the rendered M3 export.
5. Edit either the original Essential capture or M3 export in Gallery. Leica frames should now be available on the tested build.

## Rollback

If a regression occurs, disable the companion module in LSPosed, force-stop Camera, Gallery, and Media Editor, then reboot. Restore your previously tested module only with an in-place update; do not uninstall the camera package.
