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
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.4.3/snapdog-update-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "57e0df8e1a5e8917d9aa55b9214de0f074359aa838e4df0d47cd463fa2e4be7e"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.4.3/snapdog-update-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "a00efb12169f08ad5de41738ad1ba790e8cd78ad781b69e2f62b9e183d672280"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
