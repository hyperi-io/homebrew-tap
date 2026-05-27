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
      sha256 "fcc85080be64690d9fcb605a2888edceaadb48d26ae3b61e667f5d63aad55c2e"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-darwin-amd64.tar.gz"
      sha256 "123070004a9822ba04bcadf4c46d37fe1066b8c71414bc9f174d553b074ee997"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-linux-arm64.tar.gz"
      sha256 "3c7effd44cfd3b41144408e8fa2e40888fd17e5c3a326e4bf26dcae8bb70a22d"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-linux-amd64.tar.gz"
      sha256 "bb0a408348ef7d3dc781119ae5db84a805a489295d472c8b43b2f3288c9625c3"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
