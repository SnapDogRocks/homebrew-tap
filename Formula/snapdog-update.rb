class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.9.3/snapdog-update-v0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "66ea227e5b3bb55d8e93112704cc3b271eefbddd855b99248a4f94b850861383"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.9.3/snapdog-update-v0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "720106f43fbd61f1d57984976abed830401da2be7f9767bf8ae26eaacdba6032"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
