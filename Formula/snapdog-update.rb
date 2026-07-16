class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.10.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.10.3/snapdog-update-v0.10.3-x86_64-apple-darwin.tar.gz"
      sha256 "2e768b2b908ecb600e220d236bb39ecc31cd688a7efccda3f164722cd3246dbc"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.10.3/snapdog-update-v0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "0a556031235764338148929624926b9fac4dc56b240b5319502f3be9659b3a56"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
