# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.6/bird-darwin-amd64.tar.gz"
      sha256 "eb3fdc61cacc1c8fc94e98e7a6310d7cb430843bbe95ead2f6cf1f6cd1c0168a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.6/bird-darwin-arm64.tar.gz"
      sha256 "81f7a48635be42701baf8377df6499327272aeb99f843785e1bc0c44771651f1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.6/bird-linux-amd64.tar.gz"
      sha256 "633669eb10f1d25a3b3b2b896d015e06cee4fb331b73733223316259d65b0442"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.6/bird-linux-arm64.tar.gz"
      sha256 "d87741453566026cdbe8380cf2af01527fc1db2324978f5b8146214603a43208"

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
