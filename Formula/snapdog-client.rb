class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.26.0/snapdog-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "8968db0383885322d2941e6d963d888f1ffdb43185c6d9c8430753e6e27753fb"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.26.0/snapdog-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "8236ef3a92eea054066a18efa8fef36e2eb01d7281d3059bbaf3925c4960196a"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
