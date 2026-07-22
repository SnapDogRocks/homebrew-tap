class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.13.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.13.1/snapdog-update-v0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "2685535f3478d44633887745d20bdf8b93ccee9f714678ca3bb9f00a379083c0"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.13.1/snapdog-update-v0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "7128c75240ddb9fd88ad475679e85b273b43042a470ddc0812c37a99cff301b9"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
