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
  version "1.5.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.11/macbash-darwin-arm64.tar.gz"
      sha256 "e87654f3568b5e9f3ab4c53551c0552d38061bb8034df195f50edc3436ca9806"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.11/macbash-darwin-amd64.tar.gz"
      sha256 "33586b9f31d8744683198f0fbed71b06f2be31acd18bb84060112aaeaf09afae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.11/macbash-linux-arm64.tar.gz"
      sha256 "b92d9e106848628506918efd94b245aa4ba5144d2b37caeb8bbb65de3bfdaa96"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.11/macbash-linux-amd64.tar.gz"
      sha256 "ac7c01cb45a3b5b0eb4a5d68696a248d3c2067c2afcd99594e588dbeb8dee6a7"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
