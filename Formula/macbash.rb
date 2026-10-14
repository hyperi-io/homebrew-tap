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
      sha256 "512fdad082d54babef9540c6beebe55ca0c0d46497d94e499139da6851da4e82"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.11/macbash-darwin-amd64.tar.gz"
      sha256 "03724bda9815e65182f13bd0669160f6bff407f79e888188c1ae287cf1a639f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.hyperi.io/macbash/v1.5.11/macbash-linux-arm64.tar.gz"
      sha256 "6ba774c2e6226876d92d1814b63e58a7822406cd08cb1380e6501d251615d778"
    else
      url "https://downloads.hyperi.io/macbash/v1.5.11/macbash-linux-amd64.tar.gz"
      sha256 "85ecde64d48f990ed10e98417bd81225818862dce6f98512e49211d49338c3ae"
    end
  end

  def install
    bin.install "macbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macbash --version")
  end
end
