# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.149.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.149.0/bird-darwin-amd64.tar.gz"
      sha256 "5d13d782adbf98613c842d8e3ef3b0155af6e5a5fd76a3721776eb2417f2b6bf"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.149.0/bird-darwin-arm64.tar.gz"
      sha256 "36c495c7d44bc2e0d5eb0b44309ee76544d35abb485862f87efe89d14a23b07b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.149.0/bird-linux-amd64.tar.gz"
      sha256 "af26b43c8a45a9eb4bef0ed80270b76a79d97ddbfa5691ac4f95ad42b5df27e9"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.149.0/bird-linux-arm64.tar.gz"
      sha256 "09b5f764ca6de6ac97e14ab827714412bf2095f4134d01dffe02bf95062fd996"

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
