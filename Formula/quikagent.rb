class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.0/quikagent_0.1.0_darwin_arm64.tar.gz"
      sha256 "695082b88720e4f7c051d465e90d82198138dc5e2625fe10c04426c7901877dd"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.0/quikagent_0.1.0_darwin_amd64.tar.gz"
      sha256 "6b3b3eab764879346e8f01c329346d93fd4ff670bceb6e0ef7b70bce1d49c0c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.0/quikagent_0.1.0_linux_arm64.tar.gz"
      sha256 "034c1a258487b764f0e678ef8a60281a8164d955891518f25708eada6a7032ba"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.0/quikagent_0.1.0_linux_amd64.tar.gz"
      sha256 "2943f8ee70c5056870123f924b891cab9da1ee9c80d28959adf81731e23e284d"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
