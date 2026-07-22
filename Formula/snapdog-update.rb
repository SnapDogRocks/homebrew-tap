class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.15.0/snapdog-update-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "9a7d499329f2dfa1fb67695a1d374d722b4bc8631f7dc87646395c08f8742020"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.15.0/snapdog-update-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "bed0208ccf6ce9947dadc17c75b24c4069c4795f1f3708b211d868013c656e88"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
