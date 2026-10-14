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
      sha256 "b3e071b57db23bbb6693ac4a5d590113c2ca62d972fde289b8c4c470db7e3805"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.11/macbash-darwin-amd64.tar.gz"
      sha256 "b78247bc79d3e0b25d68f78e7e18d04c0ca844a0b107722805fb79cb66f28561"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.11/macbash-linux-arm64.tar.gz"
      sha256 "57cd3caa4a374bf371d40f4f24f188e7321fa7d412fed3e5f42d850a5d1a795e"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.11/macbash-linux-amd64.tar.gz"
      sha256 "e016de7c5b3f2517d3af05f5363501af09fa398c61fced64217d0560f1bc9035"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
