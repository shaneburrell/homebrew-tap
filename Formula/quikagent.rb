class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.6/quikagent_0.1.6_darwin_arm64.tar.gz"
      sha256 "6de9fd09398b574111fef0ab613a586e4726fd49161c1c0970e0de710f1cb39f"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.6/quikagent_0.1.6_darwin_amd64.tar.gz"
      sha256 "6a587d9a64f279bf55f3c32b5d2e2405b4d1992019ff53ddbc9444a34c798f29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.6/quikagent_0.1.6_linux_arm64.tar.gz"
      sha256 "15c902e861222c1f2e300d37210e9c9cb9331f43d3cf11ef955f50416992c22c"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.6/quikagent_0.1.6_linux_amd64.tar.gz"
      sha256 "be04eda73675463c6ff946a5d7285589a931e0474b88f00ffa4b313ca69d5d15"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
