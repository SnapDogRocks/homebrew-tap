class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.19.0/snapdog-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "34fa765f496a57a84b097723e9fe69435db8879ef7785e43d2d9362a02ee7bd2"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.19.0/snapdog-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "1735c2ad52b99ee8bc4bc967ce51487ed09710493d8fe44501cfddba2100205f"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
