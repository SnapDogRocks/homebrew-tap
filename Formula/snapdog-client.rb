class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.17.0/snapdog-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "a996f5c4cf01531e420886d47298734b17b1201de5176899beb3c83530cf3a96"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.17.0/snapdog-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "e41d24596c8d674ba89111786e14ff2d7e1c1cf77439f4d160a520b302ac3a53"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
