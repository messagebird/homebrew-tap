# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.88.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.88.1/bird-darwin-amd64.tar.gz"
      sha256 "b9975b3af26d0dd535ae5c809281d4f7405e1f8efff1dbe7e1e40ae580d488f9"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.88.1/bird-darwin-arm64.tar.gz"
      sha256 "cce64e0680ed38b74b9ed775d3bc1e8464de6d6123596345dc1972ba4a9a55c8"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.88.1/bird-linux-amd64.tar.gz"
      sha256 "4499978799acd870441d8c11beab54b71c4bc5650c2f1c33f24cfe2072d4b04a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.88.1/bird-linux-arm64.tar.gz"
      sha256 "1ebcfbb552c92fa71207fa562ceace0d226bd9b263f2e7329b7140acd64277f8"

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
