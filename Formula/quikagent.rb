class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.4/quikagent_0.1.4_darwin_arm64.tar.gz"
      sha256 "2250f663e816f24d9138f1da7a886c2c942e2b8f5564300d337a3b3ebe15f04c"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.4/quikagent_0.1.4_darwin_amd64.tar.gz"
      sha256 "1572180dc17bc5bad6e657e77e10677c2ede5b842e3752b56b99a50e3fdd93b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.4/quikagent_0.1.4_linux_arm64.tar.gz"
      sha256 "111a74c28d902886a5d6bc581c56b7035aea1755ec749195daee503706a856bb"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.4/quikagent_0.1.4_linux_amd64.tar.gz"
      sha256 "ae9f33a07bf9a0ca60373fb6e26e6b345080434c6d3f467365f1352204fbdce3"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
