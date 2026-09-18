# Open-source release materials

## What is included

- `releases/M3-Primrose-14Ultra-final.apk` — tested companion-module build for the environment stated in the README.
- `source/upstream/LegendM3/` — the supplied upstream Legend M3 source package.
- `source/modified-smali/` — the complete smali source set assembled into the final companion build.
- `LICENSE` and `NOTICE.md` — GPL-3.0 and upstream attribution notices.

## Reproducibility boundary

The private signing key used for the tested build is deliberately not published. The published source is provided for transparency and license compliance; this repository does not provide a turnkey rebuild workflow.

The repository does not include Xiaomi/Leica camera APKs, vendor libraries, tuning payloads, or other proprietary assets. Obtain any required base components from their authorized upstream sources.

## Licensing

Prometheus-Camera declares GPL-3.0. This release therefore provides the corresponding modified source for the included companion APK. Upstream rights notices remain in force; see `NOTICE.md`.
