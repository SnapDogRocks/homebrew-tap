class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.10.1/snapdog-update-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "bbf17f9114f597f8a46f15bbf694823ab349edb9f928652d25f04d41130a5393"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.10.1/snapdog-update-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "2ce26a5aed48b2d5636ac5b3452af0f11d29b8d8b71b6313239cb6f5e805b206"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
