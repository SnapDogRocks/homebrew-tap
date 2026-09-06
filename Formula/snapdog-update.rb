class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.16.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.16.6/snapdog-update-v0.16.6-x86_64-apple-darwin.tar.gz"
      sha256 "bad7b90baea9fe608d20271cbc6d8d3d79fc5c9e9f406af72312f6c4895177c0"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.16.6/snapdog-update-v0.16.6-aarch64-apple-darwin.tar.gz"
      sha256 "157f93e7ec6fd24575ffdba785c0210c097613219337acdb6c9ad255e161b0ea"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
