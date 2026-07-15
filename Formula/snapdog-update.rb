class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.9.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.9.4/snapdog-update-v0.9.4-x86_64-apple-darwin.tar.gz"
      sha256 "666e354fe1b6601493972935354c4686450b7911ae10ce3ae00ff9a2889a1333"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.9.4/snapdog-update-v0.9.4-aarch64-apple-darwin.tar.gz"
      sha256 "a3aadd0e2dc9d2dc9dcab439cb8770fdd7ddac462ce0a5d0ddec3a360a8d702c"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
