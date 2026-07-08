class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.7.0/snapdog-update-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "db726ec9049ee72c8df64d2b42660845cc4217927a71bc3ecd1448e2bbe423d2"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.7.0/snapdog-update-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "a01b93666455818492a4924e18d50b4e3931ca7039f9b743b645cee8f578f99e"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
