# SnapDog Homebrew Tap

Homebrew formulas for SnapDog server and client releases.

## Installation

```bash
brew tap snapdogrocks/tap
brew install snapdog
brew install snapdog-client
```

You can also install without tapping first:

```bash
brew install snapdogrocks/tap/snapdog
brew install snapdogrocks/tap/snapdog-client
```

## Formulas

### snapdog

Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX.

### snapdog-client

SnapDog multiroom audio client.

## Releases

`snapdog-update` uses its independent package version (currently 0.4.2), not
the OS image version. Its `version_scheme 1` deliberately makes this newer than
the legacy 0.16.6 formula. Preserve this scheme on future updater releases.
Both macOS architectures must pass archive checksum verification, installation
and the executable version test before the required `Formula qualification`
check allows a pull request to merge.

Formula updates are published by the SnapDog release workflow in
[SnapDogRocks/snapdog](https://github.com/SnapDogRocks/snapdog).
