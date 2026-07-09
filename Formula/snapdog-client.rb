class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.3/snapdog-v0.23.3-x86_64-apple-darwin.tar.gz"
      sha256 "5560ef5c189433b213c552012e09feb20a9c9450545448d7d078c7917f2b28d7"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.3/snapdog-v0.23.3-aarch64-apple-darwin.tar.gz"
      sha256 "554ad0118dd0383f159dde72bc3a0e12346b1d341bce7511b9e6d3a0042c3cf4"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
