class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.26.2/snapdog-v0.26.2-x86_64-apple-darwin.tar.gz"
      sha256 "c5bae37da4c7c8bb1ca00dfb490384db35623f5ee9b5ca79add9e6c6387aa1dc"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.26.2/snapdog-v0.26.2-aarch64-apple-darwin.tar.gz"
      sha256 "354b48cf4f2170d6d17850dfc5b9a8f7b5fff480e3599230f2a037d4a2cb694d"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
