class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.27.4/snapdog-v0.27.4-x86_64-apple-darwin.tar.gz"
      sha256 "914152342648a94874dc02dd4be98b8cfb98b66709a879d902dd41f1e5d44eda"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.27.4/snapdog-v0.27.4-aarch64-apple-darwin.tar.gz"
      sha256 "7d5fa82b72a00837444c18598ceae98b4e6e8aaa1433759f2852500bec7a822e"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
