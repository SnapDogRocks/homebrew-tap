class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.10.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.10.2/snapdog-update-v0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "dcd4cfe28bf1146a818fd85621328286937e70cc2313bf12f8a636f315e14afe"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.10.2/snapdog-update-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "adf8199c34f8e491dd95616933e500abf77523d3097a4026452c6433d176903d"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
