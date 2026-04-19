class SpaceCli < Formula
  desc "CLI for querying your local Space flashcard database"
  homepage "https://getspace.dev/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/space-org/space-cli/releases/download/v0.1.0/space-cli-macos-arm64.tar.gz"
      sha256 "e771b5368a4ea71355411cf21c36923d4cebd55940d2952511050781ac553a36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/space-org/space-cli/releases/download/v0.1.0/space-cli-linux-arm64.tar.gz"
      sha256 "bf13c17d8a6f4f05a066b62061fd898852dcdb3074632cbbf984a366a188c390"
    end
    on_intel do
      url "https://github.com/space-org/space-cli/releases/download/v0.1.0/space-cli-linux-x86_64.tar.gz"
      sha256 "7c1a810db892e8535f544521332858e8fa88847fd4eb86ae42bfcb7dd5d1bf37"
    end
  end

  def install
    bin.install "space"
  end

  test do
    assert_match "space-cli", shell_output("#{bin}/space --version")
  end
end
