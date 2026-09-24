# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.91.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.91.0/bird-darwin-amd64.tar.gz"
      sha256 "619470e8f7808ba3d3989d3cefdb892ce604ddf548f5d63fb475fb1b69a8b929"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.91.0/bird-darwin-arm64.tar.gz"
      sha256 "66ddf5bbb3e6d7ef127ec82ea8a974521a9f8a4b2bbdd46c669c8ca326946dff"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.91.0/bird-linux-amd64.tar.gz"
      sha256 "0213139145630af415102aba38d1a245ecf6a53ae98e966378fe8e76e1109187"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.91.0/bird-linux-arm64.tar.gz"
      sha256 "f259b5f8fc9c6978ff96b15a231eaa94edc42edfaa8f8ddd2c33f2ebcd6de097"

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
