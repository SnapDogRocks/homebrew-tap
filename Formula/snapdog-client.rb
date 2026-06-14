class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.20.0/snapdog-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "297da975a682158ca01cdd06d411371523383cc4705256c9870e00a23380f881"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.20.0/snapdog-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "8ea53ba0171a30f2f166f7811cacb56167a6dbdd5a4011ee93688ab318d0a1e1"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
