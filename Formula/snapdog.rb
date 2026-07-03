class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.21.0/snapdog-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "42d190f0b2872e6f9cd5108207fb94bc9fd91c6ba4b5b619bba2e222d815dc3e"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.21.0/snapdog-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "5a79cddf656d2c38b3700dee69ad030b135ece2b130764f4c555e9e1187d02d6"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
