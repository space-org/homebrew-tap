class SpaceCli < Formula
  desc "CLI for querying your local Space flashcard database"
  homepage "https://getspace.dev/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/space-org/space-cli/releases/download/v0.1.0/space-cli-macos-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/space-org/space-cli/releases/download/v0.1.0/space-cli-macos-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/space-org/space-cli/releases/download/v0.1.0/space-cli-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/space-org/space-cli/releases/download/v0.1.0/space-cli-linux-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "space"
  end

  test do
    assert_match "space-cli", shell_output("#{bin}/space --version")
  end
end
