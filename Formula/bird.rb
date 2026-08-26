# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.41.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.41.0/bird-darwin-amd64.tar.gz"
      sha256 "fe8260f8469093f3b26a54f80d8059ffa63237b8f6c810129ac2b7262b2b8910"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.41.0/bird-darwin-arm64.tar.gz"
      sha256 "8cfefc24c59c76b91b35a85ccfb53b499d0ca5a9c7f1f683c76b65965eb3593f"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.41.0/bird-linux-amd64.tar.gz"
      sha256 "49f4760d3202b3e5bacc0e503df67982979a587abdd04fe92af197874f7adb40"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.41.0/bird-linux-arm64.tar.gz"
      sha256 "7d1ce28201a40de12bf3f74e4342ee7022c9a665dcb19e5e6defabec3efbe88d"

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
