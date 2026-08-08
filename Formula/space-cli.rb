class SpaceCli < Formula
  desc "CLI for querying your local Space flashcard database"
  homepage "https://getspace.dev/cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/space-org/space-cli/releases/download/v0.2.0/space-cli-macos-arm64.tar.gz"
      sha256 "2266ec0e191ad4ed23b72c9ade48ab2ae6eebbb236cdf38f398351d667936115"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/space-org/space-cli/releases/download/v0.2.0/space-cli-linux-arm64.tar.gz"
      sha256 "a3b30f75e7612c2d43f2f9c9b9cbba02c7838c21270578d5aee80a6641cea336"
    end
    on_intel do
      url "https://github.com/space-org/space-cli/releases/download/v0.2.0/space-cli-linux-x86_64.tar.gz"
      sha256 "fe7a446a575d17dcb632dd6d4e925a9aa61c37d81081fc30a3cf7b54bc7ea379"
    end
  end

  def install
    bin.install "space"
  end

  test do
    assert_match "space-cli", shell_output("#{bin}/space --version")
  end
end
