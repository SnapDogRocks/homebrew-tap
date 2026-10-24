class SnapdogClient < Formula
  desc "SnapDog multiroom audio client"
  homepage "https://github.com/SnapDogRocks/snapdog"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.28.1/snapdog-v0.28.1-x86_64-apple-darwin.tar.gz"
      sha256 "5ab0811e5cc1bbcddcb3a79ffa83616b19e7702d631f2762aba052ff81638e0a"
    else
      url "https://github.com/SnapDogRocks/snapdog/releases/download/v0.28.1/snapdog-v0.28.1-aarch64-apple-darwin.tar.gz"
      sha256 "4c3733160c8bdadb0741ff287e6a0f227a855358cb1716dba79befb8f9697d7d"
    end
  end

  def install
    bin.install "snapdog-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapdog-client --version")
  end
end
