class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.10.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.10.4/snapdog-update-v0.10.4-x86_64-apple-darwin.tar.gz"
      sha256 "721f59b7b808bd6a82b9d5e164f2ed434787224947934094bb9e838777a6a7cf"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.10.4/snapdog-update-v0.10.4-aarch64-apple-darwin.tar.gz"
      sha256 "13900826b30900ce48b53f21b6318eb091e08e6fc6b3817c2d4fba95f1775218"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
