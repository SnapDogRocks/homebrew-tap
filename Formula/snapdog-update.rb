class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.15.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.15.1/snapdog-update-v0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "2f0cf7c785bd07e6ecbdbd221f561718b3ea65dacd15f8114e13b490b5904aed"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.15.1/snapdog-update-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "763faaaa559c5b66509a99a868a22a8a02fc54dd5572a94e603d90228dfa1f31"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
