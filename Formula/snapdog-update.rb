class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.16.0/snapdog-update-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "20a640550144b9573ac6729e9b517cfddcd957a16112023c4f329784862d3b7c"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.16.0/snapdog-update-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "8914c6b479d121098e1556034d07f79ff67e60db4199cb41f5e148cef9f3c927"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
