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
      sha256 "a45a3f0dc1f7054174fc99335fac56cc07e03f62d3893fad7a60eef7805bcde7"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.2/macbash-linux-amd64.tar.gz"
      sha256 "1722fa4658c489cf839a8b438c30a7a63adc5a01978778e21cb8170bbcfacb42"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
