class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.8.0/snapdog-update-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "36c5bff3e52695b9f3d279576381b4fa1dd0bba67be86d214d0198a633d6f112"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.8.0/snapdog-update-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "16a17639e6b5217affdac35a7ea016972538f90af7972cdafc63d27d6b313dd2"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
