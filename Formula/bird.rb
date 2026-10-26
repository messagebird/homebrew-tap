# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.137.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.137.0/bird-darwin-amd64.tar.gz"
      sha256 "82f4196360c738dfd6456dfb9ccf3e6361c9364b15ad54af2e60a4b0fc4a7c33"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.137.0/bird-darwin-arm64.tar.gz"
      sha256 "5bee1067974c523f688346c82184230ebb5365eedf5c704800b3f80ff07cfc29"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.137.0/bird-linux-amd64.tar.gz"
      sha256 "0a7b91233e594b3d3d1480f0017b25b9255d5b36884b5e83519dab34ef80c2ec"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.137.0/bird-linux-arm64.tar.gz"
      sha256 "5d9e2d2efda9d4e17889873c4861c511529a2d6bff5ca716fa61169e8e6a0acb"

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
