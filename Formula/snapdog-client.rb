class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.30.0/snapdog-v0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "e6d97bcfc0700a943865983966129b53927508a6075c922f7e81d1a8a446e64b"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.30.0/snapdog-v0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "a335b12425e96e0b9423bc3ae160d333807cc3f844bf8d85d93d5008e8f8fab6"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
