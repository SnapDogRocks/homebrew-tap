class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.13.0/snapdog-update-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "91a98e401d136e8194dc4a0cd0f02ca2470ad4a8e417f4ee7a81305f6dc9b6a0"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.13.0/snapdog-update-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "579824d236a111c95ff0f1ac09eef44503e9d09d8ef417782dc096a3655b9aa7"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
