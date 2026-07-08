class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.2/snapdog-v0.23.2-x86_64-apple-darwin.tar.gz"
      sha256 "d7af90e249e19bf9f5cb58ef47bc681cb3d3af7c0f1d7277aedd5b9667e72ba6"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.23.2/snapdog-v0.23.2-aarch64-apple-darwin.tar.gz"
      sha256 "210caa4c7eba5ccd5741adb76737c06728043b079ab9e6641e5523d1b2031240"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
