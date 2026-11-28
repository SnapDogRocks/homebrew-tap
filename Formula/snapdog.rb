class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.37.1/snapdog-v0.37.1-x86_64-apple-darwin.tar.gz"
      sha256 "eafb922a13d68d598a6b8f79f0aaf57c789b7f66b61c82f47d46d417725ebb87"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.37.1/snapdog-v0.37.1-aarch64-apple-darwin.tar.gz"
      sha256 "4998b6a4c75ea9840d1587fc702ebe8e4fa9ff5b80f6b32b31fe999daa8b0085"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
