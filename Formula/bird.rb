# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.115.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.115.0/bird-darwin-amd64.tar.gz"
      sha256 "0a71ad0c5c17231a06fbc180cf29021166bfb6d480a9c9020078ebf9ca6a02cd"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.115.0/bird-darwin-arm64.tar.gz"
      sha256 "eaa92c87c9df45c90138aab8fae4e6810aa82c1f300815aea4364ad3606a16ca"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.115.0/bird-linux-amd64.tar.gz"
      sha256 "7539ffd6762d4a2c642e1b9bc965f25f7a9cb1c819be8fa9abd3a3e41408d9d4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.115.0/bird-linux-arm64.tar.gz"
      sha256 "5813baee968b375f6e8f3bb364c993ad32b0b1a2061ff1b94aa3b94a4a0f2a9b"

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
