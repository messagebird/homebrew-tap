# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.18/bird-darwin-amd64.tar.gz"
      sha256 "c1da3b395278630a3c5ac5f708b0f1e4b4f573aa9a92d8fa72a60119c8a109cd"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.18/bird-darwin-arm64.tar.gz"
      sha256 "9dce9717b73c8bc4506d439be35fa8c0d9ef0c96021fcd4c0ae451b93984bc0f"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.18/bird-linux-amd64.tar.gz"
      sha256 "9505bf6979fc1cae9db4bf9ab0abaa763c56e0f0ab5b5eb3bc861ac396aa921b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.18/bird-linux-arm64.tar.gz"
      sha256 "a27dc6cc1f0955bd3b14d070d1afc834affe3ffeb54a170bb44bf4b32d28edad"

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
