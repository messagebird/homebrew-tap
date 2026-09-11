# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.78.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.78.0/bird-darwin-amd64.tar.gz"
      sha256 "53fec45946017402857afb8f220b7d7cd6aa8c7c37d9b07066168923e45384c0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.78.0/bird-darwin-arm64.tar.gz"
      sha256 "08171ed339d4549a7f4ae3bcf38234fdf007cd39fa6a5f4073b6a1fbb4f23b09"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.78.0/bird-linux-amd64.tar.gz"
      sha256 "d876b827b5dc6d5fc4ea3e87c3b1dceb9105b2c19d13438a66da7920150296d0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.78.0/bird-linux-arm64.tar.gz"
      sha256 "b03a8dc233dfba25edc01df4f8efd3a31aaedaae79641932e7d5234284a8cd6a"

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
