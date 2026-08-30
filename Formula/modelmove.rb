class Modelmove < Formula
  desc "Sparse-delta, verified transfer and migration of LLM model weights"
  homepage "https://github.com/shaneburrell/modelmove"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.5/modelmove_0.1.5_darwin_arm64.tar.gz"
      sha256 "79845c21a4bc6ee230cb06e8834daef72373ebaa4cecce365aedbb0fda1d9920"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.5/modelmove_0.1.5_darwin_amd64.tar.gz"
      sha256 "6ceb7c1130653b023841cd9db0446417dabf870766064d240444c801f146b4d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.5/modelmove_0.1.5_linux_arm64.tar.gz"
      sha256 "21a154613e3e3eb226573cda43152847328920e392015619d45cbf7963a1e35d"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.5/modelmove_0.1.5_linux_amd64.tar.gz"
      sha256 "bd5d6999aba2231faaaf63165a9e06333a37b34c111be217fbaff85cfa7f586e"
    end
  end

  def install
    bin.install "modelmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelmove --version")
  end
end
