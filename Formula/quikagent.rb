class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.1/quikagent_0.1.1_darwin_arm64.tar.gz"
      sha256 "5092b5ee7e70c0785d117144747a3d0a776b8c76448f575cf58a8c866106a535"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.1/quikagent_0.1.1_darwin_amd64.tar.gz"
      sha256 "924381d425fbae5d909dc12e839e186aad0cc685a9ed2c3794e9d3bef8fe9bae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.1/quikagent_0.1.1_linux_arm64.tar.gz"
      sha256 "3b422b4a3d4b7afcc2d3c411d7a974da518cb3925475cd835f69865f15de34f8"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.1/quikagent_0.1.1_linux_amd64.tar.gz"
      sha256 "9d19d94fa54823447f0263b5cc07801658a85e441189e4c81b8fd4e89811a2d7"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
