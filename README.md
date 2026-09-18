# Primrose M3 Global

Community release notes and setup guidance for using PrimroseCam, the retained HyperOS 1 imaging-engine tuning profile, and the Leica Essential M3 workflow on the Xiaomi 14 Ultra global software stack.

## Scope

This repository intentionally contains documentation only. It does not publish Xiaomi/Leica proprietary assets, decompiled code, compatibility-patch internals, or source material whose redistribution terms cannot be verified.

## Tested environment

- Device: Xiaomi 14 Ultra (`aurora`)
- OS: HyperOS 3.0.302.0.WNAINXM / Android 16
- Camera: Xiaomi Camera 6.4.00530.0 with PrimroseCam base
- Gallery: Global Gallery 4.3.1.6
- Media Editor: 2.4.0.5.2
- Root: KernelSU Next
- Hook runtime: Vector LSPosed 2.2

See [installation](docs/INSTALLATION.md), [compatibility](docs/COMPATIBILITY.md), and [FAQ](docs/FAQ.md).

## Features verified on the tested build

- PrimroseCam Leica camera interface and filter workflow on the global software stack
- Retained HyperOS 1 imaging-engine tuning profile for the tested still-photo paths
- Main, ultra-wide, and telephoto use through the normal Camera application workflow
- Leica Essential entry and M3 processing workflow
- Monochrome live preview for M3 capture
- M3 style/grain output at its native supported 4096 × 3072 resolution
- Gallery processing handoff
- Leica frames in the editor for both Essential captures and rendered M3 exports
- Normal camera functionality retained during regression testing

## HyperOS 1 imaging-engine profile

The tested configuration retains a compatible HyperOS 1 tuning profile for the supported still-image paths. Its purpose is to preserve the preferred image-rendering character on the stated HyperOS 3 build; it does not replace the entire vendor camera stack or claim identical behaviour across every scene, lens, or firmware revision.

This repository describes the validated integration and behaviour only. It does not redistribute Xiaomi tuning payloads, vendor libraries, or private compatibility implementation details.

## Important notes

- This is an unofficial, device-specific community setup. Back up your data and current modules before changing camera/root components.
- Camera stacks, Gallery, Media Editor, device firmware, and root frameworks change frequently. This configuration is not a universal installer.
- The APK is not hosted in this repository until its redistribution and source-obligation status are fully resolved. Do not request or publish proprietary Xiaomi/Leica assets here.

## Credits

This project builds on the work of the upstream projects and their maintainers:

- [BlueMoon-Xiaomi / PrimroseCam](https://github.com/BlueMoon-Xiaomi/PrimroseCam)
- [benbaobaoshigemi / Prometheus-Camera](https://github.com/benbaobaoshigemi/Prometheus-Camera)
- Phoenix Camera, MiCamOS1Revive, Legend M3, Xiaomi Camera, Leica, and the wider Xiaomi camera-mod community

See [CREDITS.md](CREDITS.md) for attribution and rights notices.

## AI assistance disclosure

This release documentation and its test-driven integration work were prepared with assistance from OpenAI's latest coding models. Human validation on the stated device/software combination remains essential; AI assistance does not imply endorsement by OpenAI, Xiaomi, Leica, or any upstream maintainer.

## License and redistribution

No license is granted here for upstream software, Xiaomi/Leica assets, or third-party components. Refer to each upstream project and rights holder for its applicable terms. In particular, Prometheus-Camera declares GPL-3.0; any future distribution of a derived binary must satisfy the corresponding source and license obligations.
