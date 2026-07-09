class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.8.1/snapdog-update-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "cd2979d9af4df7a40ab7b32a73d3e956c13519d0f2e7756074aeb426c165e03c"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.8.1/snapdog-update-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "7b6ea39bf2f56cd13145b5dfed1c17ef38a03cdc85f70d336f2c9ff802055f26"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
