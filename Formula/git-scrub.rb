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
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.3/git-scrub-1.0.3-darwin-arm64.tar.gz"
      sha256 "cb7c7617eddf6d18e6f13cd859158e4fcbe911d227449a680b85ce644402a888"
    else
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.3/git-scrub-1.0.3-darwin-amd64.tar.gz"
      sha256 "b4e243f00d9ba2702755debd71aefb0a4292cf2c1286feae6ba38838a43a82af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.3/git-scrub-1.0.3-linux-arm64.tar.gz"
      sha256 "51c685fe849d8205d64709d797c3e9c30468465075d96d112ffd8dd997a2c994"
    else
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.3/git-scrub-1.0.3-linux-amd64.tar.gz"
      sha256 "67c897fc64af94e93cb9abe1ad100aab5f49474768e45005d403bd99d236827b"
    end
  end

  def install
    bin.install "git-scrub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-scrub --version")
  end
end
