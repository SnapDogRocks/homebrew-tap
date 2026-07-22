class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.14.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.14.1/snapdog-update-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "a393a4d3ef63f74429c7fa97d2bea57c1c42ccd86bb0e8f6725dd89c724be90c"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.14.1/snapdog-update-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "d20e17449b26dddf454a704b79d1eeefe7a78824d45cd595b8e546a967848180"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
