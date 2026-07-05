class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.0/snapdog-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "5c9b0801a8e42cdfc295601e39c16be89d4b3b069681f21021f11dc2832282b5"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.0/snapdog-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "204636cdeda72fb646183101daf5c16e2d3013f4940ad0d9a6e415a604c457a1"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
