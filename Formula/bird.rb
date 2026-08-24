# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.37.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.37.0/bird-darwin-amd64.tar.gz"
      sha256 "e53492dd3481b36f56666a91dfa146969229c881cc0a1e01d4a9cdef72e170e0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.37.0/bird-darwin-arm64.tar.gz"
      sha256 "a239434c9b5006c750f202404e493a4df1c536345d7b66495fa7083f73decad7"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.37.0/bird-linux-amd64.tar.gz"
      sha256 "5af2e75a51fd1c3292bec985ad6c4a7a9069d46bd5bf314a3441674f187d6bb5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.37.0/bird-linux-arm64.tar.gz"
      sha256 "7755c1b62ddcb728e3e495b83e75d5b610443b54070da019418996fc9b92a11a"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  def caveats
    <<~EOS
      Authenticate before use:
        bird auth login
    EOS
  end

  test do
    system "#{bin}/bird", "--version"
  end
end
