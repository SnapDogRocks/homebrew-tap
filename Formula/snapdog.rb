class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.24.3/snapdog-v0.24.3-x86_64-apple-darwin.tar.gz"
      sha256 "fe012e5bbadb4b447ce79a3deab5f328e384621fe39a9ecae5df9864fbca20e1"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.24.3/snapdog-v0.24.3-aarch64-apple-darwin.tar.gz"
      sha256 "86ba11f2e9b35bf3c45647b8a05e8464b4f0cb3fc6faa853ff25e58a653905b5"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
