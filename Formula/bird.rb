# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.129.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.129.0/bird-darwin-amd64.tar.gz"
      sha256 "81acf9adbc04a2a220d53cb9d74e03f97b72ae5107cc61eaf9269c3d7ec5a3fa"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.129.0/bird-darwin-arm64.tar.gz"
      sha256 "fe53424b86e201b1ab0c648bbddb37bae379e7a6de46e9906f54840c4f7b3d27"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.129.0/bird-linux-amd64.tar.gz"
      sha256 "de19f0247805fdbda9b2f1f9decc8aab8c44e8b0d40eb8c468ba5d17b9486e21"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.129.0/bird-linux-arm64.tar.gz"
      sha256 "6520652182e187389db2fa527f436e5659eff0fcaa8a2ebfdaf0e0e83308e669"

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
