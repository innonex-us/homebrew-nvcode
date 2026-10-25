class Nvcode < Formula
  desc "A small, fast terminal coding agent for NVIDIA-hosted open models"
  homepage "https://github.com/innonex-us/nvcode"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.6/nvcode-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "97ea7147ef12e89637d36f66fd0a73ec02a54267f3f55a554e76a4e69ccd02be"
    end
    on_intel do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.6/nvcode-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "595850cef854a5b16e79b9e4d62f36d7cd543f57b8868155cbad0fa0a51a79f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.6/nvcode-0.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "183cc71189bf8c635a4ef595d784c4a2ba570c2a3d995e97aac6c2934adb0366"
    end
    on_intel do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.6/nvcode-0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "baf1bab03d76298f419a3a12af23b4452be13e1bd878f163f9ee7b0d4b1c4bd9"
    end
  end

  def install
    bin.install "nvcode"
  end

  test do
    assert_match "nvcode", shell_output("#{bin}/nvcode --version")
  end
end
