class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.31.0/snapdog-v0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c3e915fd685f02ef4ca0b7767049551eaa17e53eb83203745e241bbc9e4cf88"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.31.0/snapdog-v0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "0527e83f9f6171dbcc5015f836961eb5823ad2bce49a0c7a5a5acb32c62e22b1"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
