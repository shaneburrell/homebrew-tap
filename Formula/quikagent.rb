class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.9/quikagent_0.1.9_darwin_arm64.tar.gz"
      sha256 "a4adf48aac8da925178c9c5a064d55a73a01b5f0dffd0daa98eedc1089715ca3"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.9/quikagent_0.1.9_darwin_amd64.tar.gz"
      sha256 "bc57052fbae0c260d03b6c7e76ccb2a7e9510353e674743bdb377c0a580af749"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.9/quikagent_0.1.9_linux_arm64.tar.gz"
      sha256 "88545340f10e9b6c5bc80c512eec8bae2f5d79414d53e3db48a43f9a048b4095"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.9/quikagent_0.1.9_linux_amd64.tar.gz"
      sha256 "6e14cf23f0838321a5b3118ca6bc0f44d1c33f7a11559672803a139618bc47d0"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
