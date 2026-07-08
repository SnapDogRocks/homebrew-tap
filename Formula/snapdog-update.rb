class SnapdogUpdate < Formula
  desc "Firmware update client for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.3.0/snapdog-update-snapdog-update-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "9cd1ac9ff2be3a4cf418086a7e702641affdc9ecb961e5377f2d9f5143a35703"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.3.0/snapdog-update-snapdog-update-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "703fada47368bf5b40972eed4c605dcaf447b09044f4493e4b7da3c518e74067"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
