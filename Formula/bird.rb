# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.98.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.98.0/bird-darwin-amd64.tar.gz"
      sha256 "3c82ae261427ffe727313a41657f58cb5bc19bd2fc52186e85dd20987af81d7f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.98.0/bird-darwin-arm64.tar.gz"
      sha256 "9271a15b7ce08c8c4a19894ed7dfe25309e8b212c362d5c384ba31e50279db79"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.98.0/bird-linux-amd64.tar.gz"
      sha256 "727139231e39fffb77486dbbf234c8dc68dae36339bb4764753ba2a07c24e908"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.98.0/bird-linux-arm64.tar.gz"
      sha256 "7fa8b13f61af7317d585f0865584e6c85ec0b58c9f971b032d7b25eae8b91dfe"

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
