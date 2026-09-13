class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.12/quikagent_0.1.12_darwin_arm64.tar.gz"
      sha256 "25f4bb3ef9f997dbd4f42c810e77cad8b307ea745ebe5bc33039dedebba40584"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.12/quikagent_0.1.12_darwin_amd64.tar.gz"
      sha256 "31a774dc91ca4e832f63a07e0d900819add21cb0a4bcd3454a4eae1129e1b20e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.12/quikagent_0.1.12_linux_arm64.tar.gz"
      sha256 "ca1d10a1c45bd992f29cb5163f238598682c2222ca3b41de535325dec812e414"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.12/quikagent_0.1.12_linux_amd64.tar.gz"
      sha256 "60872a0e431007b933deedd161dfc705cac699ccdfd6243330f1fa78e00d3bea"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
