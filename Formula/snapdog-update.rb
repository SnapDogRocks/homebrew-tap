class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.12.0/snapdog-update-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "f2c1f9faed094183144f846cb66e3d3856e5fa08230920865d02a4507f722a12"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.12.0/snapdog-update-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "16697e7a0d1094eaa3d330b541ee9d4ea84e9c3bb2557b9c3b89c89f188c0848"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
