# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.102.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.102.0/bird-darwin-amd64.tar.gz"
      sha256 "77efee64f20421c8b31d8b18decfaecf53dce73d85bae65680d3f1ac49f095a9"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.102.0/bird-darwin-arm64.tar.gz"
      sha256 "a1245af61957ed279b2e025029710974ed7fbfb32a8d327783a945c1dfb12a55"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.102.0/bird-linux-amd64.tar.gz"
      sha256 "8bdd75a6879535619392ca14ff001de384bc3879fb2f9871ddae1db23b04c2ca"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.102.0/bird-linux-arm64.tar.gz"
      sha256 "ea2c441dbefbd08ea4a3b4e2afdd206f3bdbdb7f3860aed88cd70b428153713a"

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
