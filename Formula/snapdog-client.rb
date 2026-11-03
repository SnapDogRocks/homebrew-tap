class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.32.0/snapdog-v0.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "504d48d6741415806bcff66f546f8fe716a4c3e64b57f13810f12ae5008d1ae3"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.32.0/snapdog-v0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "725b5c0f0edb23f30fe2963f51f2c504714cf173e7c067de9b52d44418a58e60"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
