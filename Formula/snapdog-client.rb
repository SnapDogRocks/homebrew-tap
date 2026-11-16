class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.36.0/snapdog-v0.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "f4ce447880169b2010222dba0f82517f4d38b1253739e704868f0189b55ab53e"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.36.0/snapdog-v0.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "ed93dbb1db27e82eb8744900a3f2c434842e461cfbead9f8704e2b1d13e8c7b9"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
