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
      sha256 "74538b6c9111f14838114f9ec9581dc664236e39350f380815e95c52f2889d54"
    else
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.4/git-scrub-1.0.4-darwin-amd64.tar.gz"
      sha256 "a3a7481625944594e239e8ca9572093fc4236fdcff17d883b1ab3020a2ad4aa4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.4/git-scrub-1.0.4-linux-arm64.tar.gz"
      sha256 "e17d07be35ed6a7bb1feabfdb2442f0f6b33ef1b422cb59d539f52ff71628f7d"
    else
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.4/git-scrub-1.0.4-linux-amd64.tar.gz"
      sha256 "1d100c393e525513d008e372056903748f3d7f07b21c7082cf0b8e0ad7ef43ec"
    end
  end

  def install
    bin.install "git-scrub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-scrub --version")
  end
end
