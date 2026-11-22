class SnapdogUpdate < Formula
  desc "Firmware update client for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  # The old tap used the OS release number (v0.16.6) for updater
  # archives.  Scheme 1 explicitly starts the independent updater
  # version stream (0.4.2) and must remain on all future formulas.
  version_scheme 1

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.4.5/snapdog-update-v0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "b0398c898f5903d1582afba889da8532f6cfdc4ed644965982500fae7324c234"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.4.5/snapdog-update-v0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "ae83ffcaff829ce4386388d45db6f98970f292a0ab1b1c52b1e5a31b6304f9c8"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
