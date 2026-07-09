class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.7.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.7.3/snapdog-update-v0.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "e02acc6142b033b931d7baaa5df693cb4080868ab12e916df7d62ee7453b2840"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.7.3/snapdog-update-v0.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "f064dfdaaf3481ac344e3ea0ad1a905d7c6a8180127e75a1fefcc80026e25198"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
