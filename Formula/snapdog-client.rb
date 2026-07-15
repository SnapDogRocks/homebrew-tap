class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.25.2/snapdog-v0.25.2-x86_64-apple-darwin.tar.gz"
      sha256 "71af1194240c08ed68e814928e631613ee5361a3de67e48d49600e1c3e538536"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.25.2/snapdog-v0.25.2-aarch64-apple-darwin.tar.gz"
      sha256 "1e738ded0a8cf574dd7ae6e460f9a3a1c577cdbc9b344b81e7a8ec0854bd7d1e"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
