class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.34.0/snapdog-v0.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "211693b3a71be7cb8d0bf227aeb96663b030b1092c338bf492c05c4f71f2b991"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.34.0/snapdog-v0.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "e343565d2a15aef27db577fde3f5704ebd72b43bdd14ef6607b01c22c72b6e0c"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
