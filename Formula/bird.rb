# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.20.0/bird-darwin-amd64.tar.gz"
      sha256 "cd3514e8fdeb57b76128f3a5ad907a571a9c9d4583f72d3b928f33466f31307b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.20.0/bird-darwin-arm64.tar.gz"
      sha256 "df156678ec8c72c11f95dcc14151c21e6ec2476c1042bb6380447eee21a002f6"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.20.0/bird-linux-amd64.tar.gz"
      sha256 "dbf3f441fa3a88949a98da0c0e88b1934eca5021102309890132c7e5619e82a7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.20.0/bird-linux-arm64.tar.gz"
      sha256 "612c2fb4793fb35061550969a8c4bcdbe33dfaec38899ea1f24eeaecb6bed872"

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
