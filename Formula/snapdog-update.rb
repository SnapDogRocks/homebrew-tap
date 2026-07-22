class SnapdogUpdate < Formula
  desc "Firmware update client for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.4.0/snapdog-update-snapdog-update-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "eaf1a2cde7b126b2cc834c356b9fc184f78f87269fd7c5c6b1ecd0b2aa47b1c5"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.4.0/snapdog-update-snapdog-update-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "0f23f91de8edb696b07fab94f0f5e1db919b580a6bedf9cca1392c2f9ef6cb6b"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
