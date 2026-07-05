class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.0/snapdog-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "649d3b885a74721cf9751292590fe414ac7f78ce06a3f35b222d5c0a328dccea"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.0/snapdog-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "11078feed9bf386d5b2f9c02b4196f3fe926b5c9ebfbd4c4ef4ea75cbb700243"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
