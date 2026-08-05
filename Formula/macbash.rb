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
      sha256 "c3451ae8720dd178327a58833d500c662bb56d907f6263e9a1a96a9c63804201"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-darwin-amd64.tar.gz"
      sha256 "785888f51c67f309f02f21aadb6fcdcc05007fc52b48e8c045705328f6463fac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-linux-arm64.tar.gz"
      sha256 "670078b62580f1736857269a061bbdc5a284c331c3a681c4d8395434b1ad66d4"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-linux-amd64.tar.gz"
      sha256 "27c233674fa7a2978755b50ecf9b4fce71a6bc470287a52db6cfb64b23073105"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
