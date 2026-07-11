class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.24.1/snapdog-v0.24.1-x86_64-apple-darwin.tar.gz"
      sha256 "c9d4ff806c36c073b00c65c89b30db3534bfc12b99c16de831d7ca7d346e303f"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.24.1/snapdog-v0.24.1-aarch64-apple-darwin.tar.gz"
      sha256 "2ab77f038c6cdba9a78e57bd0ba356adec90a12a93fdb6ffc89aa4c7d109a41d"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
