class SnapdogUpdate < Formula
  desc "Firmware update client for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version_scheme 1

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.4.2/snapdog-update-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "2d383b0e82b50aeab4d6125652d796bee7c09697bdcd7e722bf8b0118e781c0d"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/snapdog-update-v0.4.2/snapdog-update-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "b6be8035b8f82b37cbed938a27913fd4cf7bf90861ad51949a4830678cdf3983"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
