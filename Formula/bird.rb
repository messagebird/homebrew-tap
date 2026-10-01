# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.103.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.103.0/bird-darwin-amd64.tar.gz"
      sha256 "c05c9521ffab38f801120534a3460efa8363e08ff3a97f00110a6f931011819f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.103.0/bird-darwin-arm64.tar.gz"
      sha256 "9772e9f87b47b1f0e60cc400e313c1ed304d4d5a99a727e48167128cfa667883"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.103.0/bird-linux-amd64.tar.gz"
      sha256 "2909067e11bde20c457f6d9916d7411cb05128204cd054f0e2ba11a79b486749"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.103.0/bird-linux-arm64.tar.gz"
      sha256 "a9a479e03bfe5181d80ca09b3b4aaf5792f4de88b4d75ca0ec21330fbf6eb0be"

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
