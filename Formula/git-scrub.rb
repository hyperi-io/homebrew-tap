# Project:   git-scrub
# File:      packaging/homebrew/git-scrub.rb
# Purpose:   Homebrew formula template for git-scrub, rendered into
#            hyperi-io/homebrew-tap Formula/git-scrub.rb by each release
# Language:  Ruby
#
# License:   Apache-2.0
# Copyright: (c) 2026 HYPERI PTY LIMITED

class GitScrub < Formula
  desc "Surgical removal of unwanted content from git history"
  homepage "https://github.com/hyperi-io/git-scrub"
  version "1.0.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.4/git-scrub-1.0.4-darwin-arm64.tar.gz"
      sha256 "9145b9fdefa8f41187e6928ec82f71931859e5abdc8c14efb34f2b8c59423365"
    else
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.4/git-scrub-1.0.4-darwin-amd64.tar.gz"
      sha256 "311c9d30d6f2c82c2f1662491eafdd142ced9761cc379baa76c7abfdaf35275b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.4/git-scrub-1.0.4-linux-arm64.tar.gz"
      sha256 "7cf9c29267bc0b4911c55ce8640a8606f13efaa62a59fb3d9147301b508c9fec"
    else
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.4/git-scrub-1.0.4-linux-amd64.tar.gz"
      sha256 "3f853ab11b03bff384f1ccb88db985b1b8b4f3b931f75d55cb8fe140046d6311"
    end
  end

  def install
    bin.install "git-scrub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-scrub --version")
  end
end
