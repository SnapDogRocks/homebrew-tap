class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.9.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.9.2/snapdog-update-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "ce831059d2346b6821b23f45528996d953919a8c43e59835e431e422e9ccefda"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.9.2/snapdog-update-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "79afb77d1db2f11674a7cc724d7466748e7097796141e18ff0d00aa2fcb68601"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
