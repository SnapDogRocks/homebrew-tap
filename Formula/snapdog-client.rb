class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.22.0/snapdog-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "a8226730cc45f7c90f29d103fe1d3795e9f225dedc49964e31d5c9d8f10ccb4c"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.22.0/snapdog-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "cf522aa4b635f0243c050ff5e7869ef872007e2943a54982b74c936c55827bb0"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
