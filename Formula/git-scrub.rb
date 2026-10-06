# Project:   git-scrub
# File:      packaging/homebrew/git-scrub.rb
# Purpose:   Homebrew formula template for git-scrub
# Language:  Ruby
#
# License:   Apache-2.0
# Copyright: (c) 2026 HYPERI PTY LIMITED

class GitScrub < Formula
  desc "Surgical removal of unwanted content from git history"
  homepage "https://github.com/hyperi-io/git-scrub"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.2/git-scrub-1.0.2-darwin-arm64.tar.gz"
      sha256 "95af0ac6571b40ad0cf5ea7e3efb507e7a06479eb6c90b1c569f8d2c2f424586"
    else
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.2/git-scrub-1.0.2-darwin-amd64.tar.gz"
      sha256 "c7ee02d771dead60b227c09760d4e4dbc1e23293e5b09b1962100f31ce45f2c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.2/git-scrub-1.0.2-linux-arm64.tar.gz"
      sha256 "c5a46b605a01a3cc5d0ef19e1bffe7c60184072ab2ad4ef79d03e2aafe50553b"
    else
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.2/git-scrub-1.0.2-linux-amd64.tar.gz"
      sha256 "e55ae7fc6394d57b51ce8b309ff5b8400e4087e3aa3a6624af5d1769af891584"
    end
  end

  def install
    bin.install "git-scrub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-scrub --version")
  end
end
