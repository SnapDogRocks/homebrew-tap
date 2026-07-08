class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.7.1/snapdog-update-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "c0139fa2fdb79caf65eff4e6673d9faf55ab83674da9e735787cedd3ac6eb0e6"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.7.1/snapdog-update-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "61c3aa683d02ebfa1f99b53fef925080386189968a36d5c790c2ed69325a7db1"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
