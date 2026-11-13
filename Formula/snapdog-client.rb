class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.34.1/snapdog-v0.34.1-x86_64-apple-darwin.tar.gz"
      sha256 "807e5cfa7cee78482b6dd97e7903eb7cd74ade98b97b6a68e271c226e14c0ae6"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.34.1/snapdog-v0.34.1-aarch64-apple-darwin.tar.gz"
      sha256 "0a7c27fa409549662487a1c64e61a9f494754ddd764737eb97930affcf8872ae"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
