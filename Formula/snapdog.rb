class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.4/snapdog-v0.23.4-x86_64-apple-darwin.tar.gz"
      sha256 "ff5ba7f2d7bf1a4b36b93ea2da25a5d590269e6c98fa01258ed94010c552afc8"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.4/snapdog-v0.23.4-aarch64-apple-darwin.tar.gz"
      sha256 "8f86b576c50554987336cb3a686cc3d5ed8db775e859256d4219261a738d4e53"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
