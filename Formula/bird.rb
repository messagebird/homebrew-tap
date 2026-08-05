# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.21.0/bird-darwin-amd64.tar.gz"
      sha256 "7fe83a77afa1c3bcc51c137c3e532e97880570551038888fa389dafa165de30b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.21.0/bird-darwin-arm64.tar.gz"
      sha256 "052dbf4d7dad94fed2623ee6969b1708e2e9ebec6675855291fa4da573c53e10"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.21.0/bird-linux-amd64.tar.gz"
      sha256 "66af6ea62015e716dffe8e6fb8c5d4458b6299a784f5fab61ad585c883fff608"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.21.0/bird-linux-arm64.tar.gz"
      sha256 "35a54b4bff3c29e3ded0204cc4fb91d02746bb0e32feb557d6ca14590e2ffd38"

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
