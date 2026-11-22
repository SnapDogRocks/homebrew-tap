class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.37.0/snapdog-v0.37.0-x86_64-apple-darwin.tar.gz"
      sha256 "03b569e7087a692631da82a05f105cedfcd4dd61822c1de0aa844dda3983e5f9"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.37.0/snapdog-v0.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "4ebc7f409f2bfa66ff6d37c31fd22db929df378874527f697ba2a061fad8ed9d"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
