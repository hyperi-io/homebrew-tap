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
  version "1.5.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-darwin-arm64.tar.gz"
      sha256 "d942e995235352db4d626b1e29cb86dcac3c827775bea8a2891177d6ce92ac18"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-darwin-amd64.tar.gz"
      sha256 "691ac6c06c04ae1fb9b9b3887ba808ec30296f7b7ab0dba5f81eabbd1889fb93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-linux-arm64.tar.gz"
      sha256 "1b50c4ebe511ab37cd27a56846f2a0a9fd270641943ab0fdea69585ec4cc31ff"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-linux-amd64.tar.gz"
      sha256 "36b27d2a6ad0686fee22719c09826589d37575306975bdb41889b240cdaf5ed9"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
