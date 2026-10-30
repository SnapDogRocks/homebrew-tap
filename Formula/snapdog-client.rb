class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.29.0/snapdog-v0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "43c0fc08ae62e32945d6828bdc7e11474d2a9055b40b7393213178408b4f8fdb"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.29.0/snapdog-v0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "dd3919bb6802770233246d50d5d255531c336e0e495b7b18c7b1adb5a64930ba"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
