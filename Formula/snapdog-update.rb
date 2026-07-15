class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.10.0/snapdog-update-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "4e7f62507264b60a3a885ab41a818854ed33e579ac3a18027ab777ce16f0537c"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.10.0/snapdog-update-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "dc9ece6d2ac90bc25cad4588f8484ec6db122ba28e5a16ec1341b57986704564"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
