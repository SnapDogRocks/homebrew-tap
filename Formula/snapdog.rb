class Snapdog < Formula
  desc "Multi-zone audio controller with AirPlay, Snapcast, MQTT, and KNX"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.3/snapdog-v0.23.3-x86_64-apple-darwin.tar.gz"
      sha256 "64569b589a306979417bc256a29d86bf8a077800d323eb610ff24ab777a18f22"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.3/snapdog-v0.23.3-aarch64-apple-darwin.tar.gz"
      sha256 "65badc0b3f9fdbc8c178355541a26b21a9e80b52831577a4911ca676cc5b34df"
    end
  end

  def install
    bin.install "snapdog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog --version")
  end
end
