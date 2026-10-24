class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.28.0/snapdog-v0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "86557dcf0e08239984b62b76ec747a7cba453ca6c7b3d4332206545f96f9a26f"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.28.0/snapdog-v0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "07e6aceedc783c42639c50af01f8c5bf9ab4eb55882c68d39864b99f603663f5"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
