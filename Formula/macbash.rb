# Project:   macbash
# File:      Formula/macbash.rb (rendered)
# Purpose:   Homebrew formula
# Language:  Ruby
#
# License:   Apache-2.0
# Copyright: (c) 2025-2026 HYPERI PTY LIMITED

class Macbash < Formula
  desc "Check bash scripts for macOS compatibility"
  homepage "https://github.com/hyperi-io/macbash"
  version "1.5.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-darwin-arm64.tar.gz"
      sha256 "75221c3cccb314439e582d85f370be3cf9a417f66513681400a33d24f23465f1"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-darwin-amd64.tar.gz"
      sha256 "0cd1ae3e2069384161b29152d6ee094aae0b69e409116ac946a6137f96984b90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-linux-arm64.tar.gz"
      sha256 "18d0e5db7211408570c0353dd02f063bc043a2dcade3f2988b124530a8384e18"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-linux-amd64.tar.gz"
      sha256 "e447c464e7faeaf8b01c6dada41c08565656053b1495f0882700743c28e074a1"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
