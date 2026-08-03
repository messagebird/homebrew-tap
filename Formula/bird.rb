# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.18.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.18.2/bird-darwin-amd64.tar.gz"
      sha256 "af17cce97d5f4c58104c6cf6c2050fd8433d869acef654eec8bd21b765c0c959"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.18.2/bird-darwin-arm64.tar.gz"
      sha256 "098cdfd55be28536e57503a306da11fb67e856d106885229bab81fab785edaec"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.18.2/bird-linux-amd64.tar.gz"
      sha256 "99757135a271aad27ba3411f9c8000fc064d590d5a3aa22979dc1c777d61d944"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.18.2/bird-linux-arm64.tar.gz"
      sha256 "a185fe4edb6727b52d99276087afd6074d3edc3e862c4761261b77083328869d"

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
