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
  version "1.5.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-darwin-arm64.tar.gz"
      sha256 "100ab531d3d830dcfe34e169614de8733d73ec793dcd50da43659b3e465ffdeb"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-darwin-amd64.tar.gz"
      sha256 "a02de1985a4e9181a9e3e9254a00342646ce7f6106623c2b69f333cc25e90231"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-linux-arm64.tar.gz"
      sha256 "0e9ef03de9f2d5e2038a0b55aa56f523d10dc2c3d529b007e3a12b4e7cf647a0"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.8/macbash-linux-amd64.tar.gz"
      sha256 "d46be623d0310958a329b2f4dd4dac510a76b8eeb6de6de61ffe96318676bf17"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
