class Nvcode < Formula
  desc "A small, fast terminal coding agent for NVIDIA-hosted open models"
  homepage "https://github.com/innonex-us/nvcode"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.4/nvcode-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "19f3f8528af020165fd56b0870faf30d9ffa1ef94ce0e41de5ca459899d6ba9f"
    end
    on_intel do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.4/nvcode-0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "bb031e3a1460f7f8c967822e04908d94431a4a6172817eca1ac0c713e0407727"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.4/nvcode-0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e51877568e8078a9048a46cd972ec8fea49f359c9644d1259c8e295d07c9ced"
    end
    on_intel do
      url "https://github.com/innonex-us/nvcode/releases/download/v0.2.4/nvcode-0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43fa0e78deb95330dc5bd28dd98ea944699b0837a3cd994c1c9d8086afd7f765"
    end
  end

  def install
    bin.install "nvcode"
  end

  test do
    assert_match "nvcode", shell_output("#{bin}/nvcode --version")
  end
end
