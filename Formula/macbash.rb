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
  version "1.5.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.4/macbash-darwin-arm64.tar.gz"
      sha256 "3eef8bb2526c69ba5e625fff4923e363321552982f286187fdfab041acf35f02"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.4/macbash-darwin-amd64.tar.gz"
      sha256 "a3b58bd3ffc27ec7c5fa815024217e27c15c4c9ec76000d34ac64828b77facdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.4/macbash-linux-arm64.tar.gz"
      sha256 "5649f3c8a53a28509e225cda238aa0c7609a051819109b3388fbfb2d1dc5cb6f"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.4/macbash-linux-amd64.tar.gz"
      sha256 "92982b9712879bdaf67daec42cc14f48694b644abe6c3272e93935abd60e9787"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
