class Nvcode < Formula
  desc "A small, fast terminal coding agent for NVIDIA-hosted open models"
  homepage "https://github.com/innonex-us/nvcode"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.5/nvcode-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "0ffbb143fd7c9ea96cb7f513eaba08ac38d22d885abae4e38fb8650ed15a9fad"
    end
    on_intel do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.5/nvcode-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "7bdbeb3404290c2d21de6c5d4717914063d69e9e438e6f3a6d1df12b7913984b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.5/nvcode-0.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc2884cc7d9e86db126d9146b822510872bd0e63413d4d49b3aa055b2c263f79"
    end
    on_intel do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.5/nvcode-0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fff5a4e95e2304d6aa12ae2ba8ebfa6f97e45c91f7b5db5b6bf27a38f866a186"
    end
  end

  def install
    bin.install "nvcode"
  end

  test do
    assert_match "nvcode", shell_output("#{bin}/nvcode --version")
  end
end
