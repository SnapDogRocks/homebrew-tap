class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.27.1/snapdog-v0.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "f0470420908c86ceaf6eb644442c05d9d446a655a730395c08ccb4ea1f284f0c"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.27.1/snapdog-v0.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "6493423ebe1a4758bc7fa7f7c7bde1384f35980a4a63b79af1d61eeaeaee2a52"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
