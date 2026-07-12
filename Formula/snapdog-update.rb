class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.9.1/snapdog-update-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "46eed0ba775360c50e28d4c424e44b35387c7388a4344bef961387879583af4e"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.9.1/snapdog-update-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "7e7eca88c124b0e8e8c31ad038f621d288f6ee940c482b349aa23dc0d2d6b2a4"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
