class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.14.0/snapdog-update-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "e6d2c36193fcc4079e5b7ad2897d7447078e10581f60f7f942668d0035ce48d0"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.14.0/snapdog-update-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "1d642e8f8615f8795c21749e030bc771410302c02018f6eb98bf2fa1419f6fdc"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
