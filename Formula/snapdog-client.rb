class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.28.2/snapdog-v0.28.2-x86_64-apple-darwin.tar.gz"
      sha256 "e486c83bd3c5eeaa9101c874abd2039c9c4a105c47dbdd0776f43b294c7b1f0d"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.28.2/snapdog-v0.28.2-aarch64-apple-darwin.tar.gz"
      sha256 "1e17e1264a7edc66887588b55af5d12bb1e58a517c787b1030f1e330ec8f8b60"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
