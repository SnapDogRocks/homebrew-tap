class SnapdogUpdate < Formula
  desc "Firmware update client for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.3.1/snapdog-update-snapdog-update-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "9334010a2f792f49815d393a68a3700d2a55845bf206c18013c7241d1d21939c"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.3.1/snapdog-update-snapdog-update-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "828f31592327b27d8a566a8d328c4fc03b6a3b276e72f2e1fba0d07abdb1edc8"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
