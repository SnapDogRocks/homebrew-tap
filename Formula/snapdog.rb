class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.25.1/snapdog-v0.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "ac8ab2dc54e2e67ae21df34d25dd65df5bfb568d20d0c0d53f789fe5f7c8c0e3"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.25.1/snapdog-v0.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "b4017897d184f9b44bfc90d950b310c8f066d79742e42c793ea48a64c3685803"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
