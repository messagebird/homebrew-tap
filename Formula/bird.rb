# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.104.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.104.1/bird-darwin-amd64.tar.gz"
      sha256 "76fccabf411c62d9032309e841a71ca138cdb03245a2d26de554639463b0827e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.104.1/bird-darwin-arm64.tar.gz"
      sha256 "bd2cd5c324078b5da27103d57f45c1149cf51e0f3181b97d27d76e6fee0aaa32"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.104.1/bird-linux-amd64.tar.gz"
      sha256 "7513d3ce17129b3f8ab403fa86f11b9376691d7db633a3dfaae32253bb4f20b5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.104.1/bird-linux-arm64.tar.gz"
      sha256 "2b9a647b513dc8b5da9bc04ec36c0f89932ec47b5f50c340624cbdc5ff382712"

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
