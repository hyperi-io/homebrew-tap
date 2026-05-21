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
  version "1.5.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.7/macbash-darwin-arm64.tar.gz"
      sha256 "bd3c2cc7605796aa4b442c4d0f81a6a7105625d46be61f2dfd4edcc12f613298"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.7/macbash-darwin-amd64.tar.gz"
      sha256 "c376c80309c4cbde692454b6b4181a12c4865a07cf1bca384feb8a88df1cd6e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.7/macbash-linux-arm64.tar.gz"
      sha256 "8521ad347208ad42549a90448efd8dd891131909baf49cdcec335a5a0e8b93e3"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.7/macbash-linux-amd64.tar.gz"
      sha256 "32b3e3328a654e47ca82e600756dbb67b4fa8eaee73a73dd8a1b9a560c9e7ea7"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
