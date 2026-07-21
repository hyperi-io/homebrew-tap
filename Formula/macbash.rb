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
      sha256 "d942e995235352db4d626b1e29cb86dcac3c827775bea8a2891177d6ce92ac18"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-darwin-amd64.tar.gz"
      sha256 "691ac6c06c04ae1fb9b9b3887ba808ec30296f7b7ab0dba5f81eabbd1889fb93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-linux-arm64.tar.gz"
      sha256 "02144b75f1b816c6cccf35d9d1d14d4e2fb5528c812f7f2ed385bbcecbf7051e"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-linux-amd64.tar.gz"
      sha256 "174a12391b1f8ca1ed45e1979c7427f895ba458c5cec8b99532b6b6afcdb6349"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
