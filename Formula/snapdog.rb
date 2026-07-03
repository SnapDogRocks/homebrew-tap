class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.21.1/snapdog-v0.21.1-x86_64-apple-darwin.tar.gz"
      sha256 "d55498b98be9cb937b6300f9c8753dc40f5028f51192e701070f74c9da754733"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.21.1/snapdog-v0.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "bcf4c279ca28902447060075e2ab580cedd1352a4c41ae3e66715323ba6a11a0"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
