class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.35.0/snapdog-v0.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "720822d5fdd0efc2d771aa7f97a5a0a0111732b7890fb1b2b9f0a95b23e21b3a"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.35.0/snapdog-v0.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "41644b776739ef5514526e582e3e55093ca90ecb5e21da16968c4c629ae61468"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
