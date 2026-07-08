class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.2/snapdog-v0.23.2-x86_64-apple-darwin.tar.gz"
      sha256 "e2d9ea8c770c8b0d48d3268c3cf692aca29af86de26028a1883cd59e6230d431"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.2/snapdog-v0.23.2-aarch64-apple-darwin.tar.gz"
      sha256 "147a0d68dd6baeef2336968a9bc16f572fd715843312a9211baa0d63bce57460"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
