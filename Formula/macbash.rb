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
  version "1.5.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.12/macbash-darwin-arm64.tar.gz"
      sha256 "564db21efac2f13707e301cb5dab36139dccda013ca4a793a1cad1561272fc2d"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.12/macbash-darwin-amd64.tar.gz"
      sha256 "931f559aa4590db19ff9f4defe5e288521fc181b2ccdd89b9649ca0fed55b49b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.12/macbash-linux-arm64.tar.gz"
      sha256 "71018c785e5bb6ed82da652f8859d5738374e2d9aa357d172b3492c110b11a62"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.12/macbash-linux-amd64.tar.gz"
      sha256 "78ce1a271ddecdbcbd284f3cf5464ef4463e2271550b3f9d02c2cf8a479ce828"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
