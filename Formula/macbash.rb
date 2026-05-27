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
  version "1.5.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.9/macbash-darwin-arm64.tar.gz"
      sha256 "e2b63938e1f746bd77b4804e959ee52b94f3affeb8f417553fc58dc5b0e4b198"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.9/macbash-darwin-amd64.tar.gz"
      sha256 "f1ccbec9583d93eb6a4279b56a599c95044f0b60c85ea2e073c14a4fe92cd1f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.9/macbash-linux-arm64.tar.gz"
      sha256 "7f52dd9bd753c223a36ba81adba51fc9c49afa84100378e7bce9b6b4a5f97fe2"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.9/macbash-linux-amd64.tar.gz"
      sha256 "88fc2b24f52413a3c234879709a2a07b061c05120f1268096fd85b5ccf14a970"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
