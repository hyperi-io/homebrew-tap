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
      sha256 "88db844e39cdf8afff70558ccc0248794908b045010bc8977fbf879c658a58de"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-darwin-amd64.tar.gz"
      sha256 "90cd1a771a567dbdee3e1d83660d5273a81c7df1197773b94f23ee251b612aba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-linux-arm64.tar.gz"
      sha256 "a10b5be4d961db4c0ef9a560dda10e79281687856bf5c1bbbe204c8d3082f8f5"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-linux-amd64.tar.gz"
      sha256 "de0136f2022a5b7b1a21ba1ca32b90f3c0f870921c2920873deb8fdd93e34fd3"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
