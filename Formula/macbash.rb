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
  version "1.5.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.5/macbash-darwin-arm64.tar.gz"
      sha256 "df2c800be348f53428c9fde04209dff2d2a6336338e678476cffa4ea60fa6037"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.5/macbash-darwin-amd64.tar.gz"
      sha256 "3ac2854f495ab1d0ec8d717a754308627c94a8d2c461d16f4e7e23b98eedcc84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.5/macbash-linux-arm64.tar.gz"
      sha256 "d713ac32d1dda3974068ad063f04b7c3dd3624d61e7e22e6f9cfc1713a1bbfaf"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.5/macbash-linux-amd64.tar.gz"
      sha256 "4a6f34d510251468194b7ca12e30c864f59109991d104fd5ca1106d88dd819da"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
