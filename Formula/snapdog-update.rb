class SnapdogUpdate < Formula
  desc "Firmware update client for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  # The old tap used the OS release number (v0.16.6) for updater
  # archives.  Scheme 1 explicitly starts the independent updater
  # version stream (0.4.2) and must remain on all future formulas.
  version_scheme 1

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.4.4/snapdog-update-v0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "c33568ddfe78160f8589f8388350837dcf21b7c4412393425f78b8c1c069707d"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.4.4/snapdog-update-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "bb3400c88d60c76b227522934b9b904c21db578c30da0111234e362d008b091c"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
