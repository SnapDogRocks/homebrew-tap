class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.37.2/snapdog-v0.37.2-x86_64-apple-darwin.tar.gz"
      sha256 "f651e2a4cc0b98b862ef267d2191253fa8cc4bacf8a53af3d8ec3df1a04ccb0d"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.37.2/snapdog-v0.37.2-aarch64-apple-darwin.tar.gz"
      sha256 "ce7916531b21503a18fe1456b1a504133358ddf187625296e7c0dbbdd9dd4bb9"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
