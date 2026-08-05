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
      sha256 "aef1cbab5e10e1050bad53442095a48116d998c32c09ad22d38cb9ad8cc587e2"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-darwin-amd64.tar.gz"
      sha256 "81c32537939f770c9c9625940cf1be7455115292dd0aacc1ad26b24c5d86cf36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-linux-arm64.tar.gz"
      sha256 "8765486099b03cd30f3fe5263b0ef9a43d1948288468d704ad8cadd8781dec17"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-linux-amd64.tar.gz"
      sha256 "53f7eb2f4797cff1037586cf3b8eb67be06b7a4aea70e9b1067567db79b421e7"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
