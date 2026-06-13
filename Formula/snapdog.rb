class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.18.0/snapdog-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "815f9b85bccd826032a1730d883339fbf22f85efafd6f205f16d6d06014bc6f8"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.18.0/snapdog-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "db58827deceb80f67572175b4cef04416273203e20c1e99ec3cbe990df6ed53c"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
