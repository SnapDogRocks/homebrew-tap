class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.33.0/snapdog-v0.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "42568bbfd07616e52d0a9a904fe02468f0e23d6a4515cc34d32fbf554ae4a939"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.33.0/snapdog-v0.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "55a8576d46ad3fb0bb2f647ecda9dacb246379c91b0597eac5af0b3d1e7b4fb4"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
