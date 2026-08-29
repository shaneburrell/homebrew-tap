class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.2/quikagent_0.1.2_darwin_arm64.tar.gz"
      sha256 "29d0cb68f83f0f6467dd044e61680fa30708b173b7f41be499168a903ff52105"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.2/quikagent_0.1.2_darwin_amd64.tar.gz"
      sha256 "12c8cff574994ea9dd6abd4b61d4eaabcc6d6ab99d4809668a9a17c5eecafccf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.2/quikagent_0.1.2_linux_arm64.tar.gz"
      sha256 "d8943d63814ee08eb914d84235158d9c16f924cad84448eb44083d8dd7eec24b"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.2/quikagent_0.1.2_linux_amd64.tar.gz"
      sha256 "f14dc2be4342a4ff579de3e77fb8db63c4ddd924c80fcc5b64bd6ce2a4dd9098"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
