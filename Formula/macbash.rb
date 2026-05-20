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
  version "1.5.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.2/macbash-darwin-arm64.tar.gz"
      sha256 "1eaffcde2e6078ae1a46473421957831b15e2d02bbe10ce2ed719e278c6ec292"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.2/macbash-darwin-amd64.tar.gz"
      sha256 "c1f1ee0025453c94a015def028f76f1eea0181d60b7a10d6a1ac040f3bd21de0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.2/macbash-linux-arm64.tar.gz"
      sha256 "03b7896a857187dc2d898e3a70f3925fc93f80fbd1674a49285a4da7ac4137b8"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.2/macbash-linux-amd64.tar.gz"
      sha256 "59c05cb935acabc2d3bcccb0b6a0f859b8b7020bcf7f2e05d0dfeddbae9dd824"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
