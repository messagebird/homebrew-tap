# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.116.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.116.0/bird-darwin-amd64.tar.gz"
      sha256 "a8d85284f3c4a9428ada502ce31bae34ceba29ba9eba554334ba3a1ef6a1ee45"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.116.0/bird-darwin-arm64.tar.gz"
      sha256 "61696b98e9ea50836a223357ea4be69fc36d0a431e8869a54e370bd5f7e57b8e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.116.0/bird-linux-amd64.tar.gz"
      sha256 "03fa52b66ce5c6be128bc27407826517b1bc1147965248687d0a8f0bbc697665"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.116.0/bird-linux-arm64.tar.gz"
      sha256 "b7bc65ce46c90d70a6e588e4f69ab2b9d54c3299a612228162bddb5621133ac9"

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
