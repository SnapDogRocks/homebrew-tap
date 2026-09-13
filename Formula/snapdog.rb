class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.27.8/snapdog-v0.27.8-x86_64-apple-darwin.tar.gz"
      sha256 "93937e8adfcec7b30535e0f044d5d2da2fd071e54dffb44c0775ef3cf7b611cc"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.27.8/snapdog-v0.27.8-aarch64-apple-darwin.tar.gz"
      sha256 "36e9241b8e22c2a1f700bf7c203c4daf292eeefa711751bf26fbcaf4fbd9872e"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
