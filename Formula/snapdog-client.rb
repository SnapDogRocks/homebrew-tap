class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.27.0/snapdog-v0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "46c07fa60ae7707b6f886e3018ffaed55d2f5bae2bb74ea95cf6c082a359b025"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.27.0/snapdog-v0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "71efadee46825899d54b53337412400e0ce1e2b15c32972f4639b5c9b9f056ad"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
