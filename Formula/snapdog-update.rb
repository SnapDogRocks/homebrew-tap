class SnapdogUpdate < Formula
  desc "Firmware update tool for SnapDog OS"
  homepage "https://github.com/SnapDogRocks/snapdog-os"
  license "GPL-3.0-only"
  version "0.14.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.14.2/snapdog-update-v0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "0f43fdb60c72bff3c68706f4ad161b5bbe9c9381f4d325a1fd3067b2f8211020"
    else
      url "https://github.com/SnapDogRocks/snapdog-os/releases/download/v0.14.2/snapdog-update-v0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "b2fee9335ff9353fb832b11ac69362662f941c00fb93e191d1c8b66a2b240a3c"
    end
  end

  def install
    bin.install "snapdog-update"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-update --version")
  end
end
