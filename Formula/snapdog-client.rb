class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.29.1/snapdog-v0.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "1b6e2a59d4f29242e0dfb9ff9d88cca68676653fdb1a36194c6704fe91ea4507"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.29.1/snapdog-v0.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "10fed660ea904ea4336f38c088ed4a3833a4ad794ab3ef0f75b1f7d53e154331"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
