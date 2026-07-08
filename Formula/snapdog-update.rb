class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.7.2/snapdog-update-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "5becc6e0757b747f4b6c6df46ecc72c690d2bef5ce0e9638a96c8ce371cc6a8f"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.7.2/snapdog-update-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "0b0225879f70ef0c452e97b5ad0bd890b40f71e06653ec71ab1e39fd835bb7e0"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
