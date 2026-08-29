class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.3/quikagent_0.1.3_darwin_arm64.tar.gz"
      sha256 "e3de14ef034504bf4ddc9d2fcea442cd4894b8b82efe421887d093b4b5088c52"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.3/quikagent_0.1.3_darwin_amd64.tar.gz"
      sha256 "05afdd7d2b3e12f7486fd42330fca0ce28bbf0968537b387a4766102ce600d29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.3/quikagent_0.1.3_linux_arm64.tar.gz"
      sha256 "0f03c26884b16f7560a553ac74e87b30d56f041b890992cdc8244847a3e14559"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.3/quikagent_0.1.3_linux_amd64.tar.gz"
      sha256 "4d6087c5fa88f4891a3ba6a173a0d7f00ec9df0f4bfb226eafa34f9c06578505"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
