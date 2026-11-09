class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.33.1/snapdog-v0.33.1-x86_64-apple-darwin.tar.gz"
      sha256 "92394f6f0a948aba94140770e3ebf3bfa577f77937cbd2bbceaf30921f115ffb"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.33.1/snapdog-v0.33.1-aarch64-apple-darwin.tar.gz"
      sha256 "e20a6b76ab6a33e0b1656c6facd1504b7fef520500887b53d4ce5dd3e8922f12"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
