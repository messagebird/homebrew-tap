# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.107.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.107.2/bird-darwin-amd64.tar.gz"
      sha256 "1e8dacd797a95f86903004b5b468559c75459ca3bd4f42ad341dfcc8c4772cdb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.107.2/bird-darwin-arm64.tar.gz"
      sha256 "5a7a8d891edb40d5c3f5e87f6d3ea00746fce7a6a912887af0c5a6cb62487289"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.107.2/bird-linux-amd64.tar.gz"
      sha256 "86d46f5afa4b33d6c2fccafda61f42fff2ed1399836ff6cb0df72c7ab27dd627"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.107.2/bird-linux-arm64.tar.gz"
      sha256 "e7c0386486338a3e22042f4830fd4b425fd6d40dc0fb5ba865bcc6861c15c710"

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
