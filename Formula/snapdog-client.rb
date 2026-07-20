class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.26.1/snapdog-v0.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "95019543875bae9302ad4065c52dc8aefd93a616acf6e49508a34a50e03e4057"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.26.1/snapdog-v0.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "923fbdfbb15c414f6928e062aaf2814b17a6865e65a44aa826c0ac75138efd3a"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
