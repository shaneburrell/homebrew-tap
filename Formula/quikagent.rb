class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.7/quikagent_0.1.7_darwin_arm64.tar.gz"
      sha256 "7600f8dab741e8e7e7f4c4f2cb82c68904ab7fdf94484d8f6eca4ba96fbd65b6"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.7/quikagent_0.1.7_darwin_amd64.tar.gz"
      sha256 "c12147d03d6c6d0ba3102f93b0dcd7085b614d06984217d020256e0f3cccc80c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.7/quikagent_0.1.7_linux_arm64.tar.gz"
      sha256 "faeeb477a007511f49f484c4652b22150a2d09aa93f657192d657d4fe2e1d3d9"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.7/quikagent_0.1.7_linux_amd64.tar.gz"
      sha256 "bf4adcdb42f2ff84a94b05af55b65ddc4c20024d63161eab3e9d1f030fb980ee"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
