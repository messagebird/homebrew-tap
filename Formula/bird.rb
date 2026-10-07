# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.113.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.113.0/bird-darwin-amd64.tar.gz"
      sha256 "babba3d7f8807603eac20f4995fe4bbfb62c8bcf3c64734c9d7af6286d304633"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.113.0/bird-darwin-arm64.tar.gz"
      sha256 "1e068e03b9d66cc563ef1eb2965fda4d7f603e2947c55b316797eb6014f014c0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.113.0/bird-linux-amd64.tar.gz"
      sha256 "7ee1ece69ae973a3124c221b2c7e4934c5f148fbd57928eda99163e7d7639798"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.113.0/bird-linux-arm64.tar.gz"
      sha256 "51011883756f9e196eeee86dd9bb54096334a09e1630411f900272df45793f25"

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
