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
      sha256 "c9d09602850709d6a90cdbc33b4ae495c4180037c1ea2d9376ce1873d984e532"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-darwin-amd64.tar.gz"
      sha256 "f22a6f671edc03b5de421c554aa1133cd6481690af012834eb4428aee3a458fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-linux-arm64.tar.gz"
      sha256 "e91bcfb3061ad58c21558db266d8197331ed735e443a5c2ba6a37110d3c5b3ee"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-linux-amd64.tar.gz"
      sha256 "531f44ca670abb0bda992bfc59f507e59222f4f7a7bc931639f3629e07e60ae4"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
