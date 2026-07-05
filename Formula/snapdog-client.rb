class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.0/snapdog-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "486d2ab6e0d05bcc9425058085f8036ca0e391e980eb904e11aa9e3ad9a4766d"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.0/snapdog-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "8619bde9d6d56ef7abb829ac7575a219e54b0c17a4a7284a1e48eadff5fd6330"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
