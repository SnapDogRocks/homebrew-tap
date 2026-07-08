class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.1/snapdog-v0.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "d38c3b43ef17b6638f8f730087d1d2f8638a6aaba656c708df8298e8b305a136"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.1/snapdog-v0.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "c3fcf12e621598ba6098f0a114bb887450fc4bff47d8e845b81691a454d42321"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
