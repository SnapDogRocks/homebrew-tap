class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.3/snapdog-v0.23.3-x86_64-apple-darwin.tar.gz"
      sha256 "b2034138d997aaa5d7339bef5a21e7ccabc4233bb72fb65521989b75d8b600cc"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.3/snapdog-v0.23.3-aarch64-apple-darwin.tar.gz"
      sha256 "2406ab9bc6f5c5b0843ee51742cc294a1ac91d5b020ffb334096e1b977ec9f6a"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
