class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.27.6/snapdog-v0.27.6-x86_64-apple-darwin.tar.gz"
      sha256 "79ebc820b9049764d35679e80e8cdcce76b0101e0146e4d6beab84c6f32be0e4"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.27.6/snapdog-v0.27.6-aarch64-apple-darwin.tar.gz"
      sha256 "7bbdf78a2b4043727e42faf7faf0dd57aa2dfb77d7c9afb630a87d5699fc8111"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
