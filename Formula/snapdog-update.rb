class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.9.0/snapdog-update-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "07479f947f811db9e3200fc9248b2316d10d80331c2bffc93c8a8b79013377bf"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.9.0/snapdog-update-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "8a178cbe5c5466a7543db9e784be6124569401821d23cc0a97f7f5b1b9c79f62"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
