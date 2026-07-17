class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.11.0/snapdog-update-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "6c508b32362abb26a758d17ddc70ea64203a161e39b8ce2d4919c58a3d5e43f2"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.11.0/snapdog-update-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "d2965680837b3aa468650916efae55c48a97fd90efb0649234661e6a347fd247"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
