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
      sha256 "47454b93c5e4763cce8925492026bcf072ebe1d467f06139ff5182494d55ae48"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-darwin-amd64.tar.gz"
      sha256 "9d1c4514b1b6ce9655523299eca1957603ca26179453693564049d80c151f946"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-linux-arm64.tar.gz"
      sha256 "858b33a9a2939dcab97e42c6a32a8acbef3f098ce2a76b5ba5dbdf83fed642c2"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.10/macbash-linux-amd64.tar.gz"
      sha256 "645c73f4dafaa9f189018200175d06cfd858117c9184de36f9703c7ff5ae4ca0"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
