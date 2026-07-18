class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.12.1/snapdog-update-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "96dd8f6dee7376da71201f0d91bb13ea700d70c3047b1d57ed9fe87f69775611"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.12.1/snapdog-update-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "0ef49ebae25955511c46f838f59ed945174521581cd2b00e621ddd0609e2e41d"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
