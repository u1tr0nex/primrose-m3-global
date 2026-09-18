# Primrose M3 Global

An open companion-module release for using PrimroseCam, the retained HyperOS 1 imaging-engine tuning profile, and the Leica Essential M3 workflow on the Xiaomi 14 Ultra global software stack.

> ## M3 is the highlight
>
> PrimroseCam and MiCamOS1Revive already provide the camera-layer and HyperOS 1 engine foundation. **This project adds the complete Leica Essential M3 experience on top:** M3 entry, monochrome live preview, Gallery-based Leica processing, native 4096 × 3072 style/grain output, and Leica-frame compatibility for both the Essential capture and rendered M3 export.

## Scope

This repository publishes the tested M3 companion APK, its corresponding modified source, and setup documentation. It does not publish Xiaomi/Leica proprietary camera APKs, vendor libraries, tuning payloads, or other assets whose redistribution terms cannot be verified.

**Module download:** [M3-Primrose-14Ultra-final.apk](releases/M3-Primrose-14Ultra-final.apk)

## Two upstream foundations, one tested global setup

This setup brings together two complementary upstream directions:

| Foundation | What it contributes |
| --- | --- |
| [PrimroseCam](https://github.com/BlueMoon-Xiaomi/PrimroseCam) | Leica-oriented camera experience: the camera application layer, Leica UI, live filter workflow, watermark/filter ecosystem, and the user-facing camera workflow for Xiaomi 14 Ultra. |
| **MiCamOS1Revive** engine profile | HyperOS 1-derived imaging-engine tuning: supported still-image pipeline configuration, camera-engine tuning profile, and the preferred rendering character retained on the tested HyperOS 3 global build. |

The result is intended to combine PrimroseCam’s interactive Leica camera experience with the retained OS1 engine character, then extend the Leica Essential workflow with tested M3 processing and Gallery-frame support.

The upstream PrimroseCam project credits MiCamOS1Revive and Phoenix Camera community contributors as part of this combined camera/engine approach. This repository does not redistribute the associated vendor tuning payloads, libraries, or assets.

## Tested environment

- Device: Xiaomi 14 Ultra (`aurora`)
- OS: HyperOS 3.0.302.0.WNAINXM / Android 16
- Camera: Xiaomi Camera 6.4.00530.0 with PrimroseCam base
- Gallery: Global Gallery 4.3.1.6
- Media Editor: 2.4.0.5.2
- Root: KernelSU Next
- Hook runtime: Vector LSPosed 2.2

See [installation](docs/INSTALLATION.md), [compatibility](docs/COMPATIBILITY.md), [FAQ](docs/FAQ.md), and the [open-source release materials](OPEN_SOURCE_RELEASE.md).

## Features verified on the tested build

- PrimroseCam Leica camera interface and filter workflow on the global software stack
- Retained HyperOS 1 imaging-engine tuning profile for the tested still-photo paths
- OS1-derived supported photo-pipeline configuration and render-character profile
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

## Upstream feature attribution

### PrimroseCam camera layer

The upstream PrimroseCam project describes a Leica Camera Suite for Xiaomi 14 Ultra, including Leica-oriented UI and camera experience, live filter workflow, watermark/filter assets, and supporting module documentation. Refer to its [README and releases](https://github.com/BlueMoon-Xiaomi/PrimroseCam) for the complete upstream feature list.

### MiCamOS1Revive engine layer

The MiCamOS1Revive portion is the imaging-engine side of the upstream combination: a HyperOS 1-derived tuning profile for supported still-photo paths. In the validated configuration, it is used to retain the desired rendering character on HyperOS 3; it is not represented as a wholesale replacement of Xiaomi’s camera HAL, native imaging libraries, or all vendor scene/lens pipelines.

## Important notes

- This is an unofficial, device-specific community setup. Back up your data and current modules before changing camera/root components.
- Camera stacks, Gallery, Media Editor, device firmware, and root frameworks change frequently. This configuration is not a universal installer.
- The companion APK and its corresponding modified source are published under the release materials described in [OPEN_SOURCE_RELEASE.md](OPEN_SOURCE_RELEASE.md). Xiaomi/Leica camera APKs, vendor libraries, and proprietary imaging assets are not included.

## Credits

This project builds on the work of the upstream projects and their maintainers:

- [BlueMoon-Xiaomi / PrimroseCam](https://github.com/BlueMoon-Xiaomi/PrimroseCam)
- MiCamOS1Revive engine profile, as credited by PrimroseCam’s upstream documentation
- [benbaobaoshigemi / Prometheus-Camera](https://github.com/benbaobaoshigemi/Prometheus-Camera)
- Phoenix Camera, MiCamOS1Revive, Legend M3, Xiaomi Camera, Leica, and the wider Xiaomi camera-mod community

See [CREDITS.md](CREDITS.md) for attribution and rights notices.

## AI assistance disclosure

This release documentation and its test-driven integration work were prepared with assistance from OpenAI's latest coding models. Human validation on the stated device/software combination remains essential; AI assistance does not imply endorsement by OpenAI, Xiaomi, Leica, or any upstream maintainer.

## License and redistribution

No license is granted here for upstream software, Xiaomi/Leica assets, or third-party components. Refer to each upstream project and rights holder for its applicable terms. In particular, Prometheus-Camera declares GPL-3.0; any future distribution of a derived binary must satisfy the corresponding source and license obligations.
