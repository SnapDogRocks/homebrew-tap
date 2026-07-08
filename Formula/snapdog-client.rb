class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.2/snapdog-v0.23.2-x86_64-apple-darwin.tar.gz"
      sha256 "6310ea1a42ce0ee432a1be53996adca92c92cb81c4bcef5d18ede2da5799b106"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.2/snapdog-v0.23.2-aarch64-apple-darwin.tar.gz"
      sha256 "c7c92cae3cfed2534410b96a8041ff30c6ea2aa4870f22c68dbe500f94ae5183"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
