class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.22.1/snapdog-v0.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "9a030e94c8ac44d254254fc9ec3ab30b5772d1df82199a1b8bb42968f500056f"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.22.1/snapdog-v0.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "d6bb2291d6f87d0a920f0eb0f04489b9783dd39a7383d7b6f5a6dcd2c021a8ec"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
