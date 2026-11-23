# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.181.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.181.0/bird-darwin-amd64.tar.gz"
      sha256 "e31452125eb645ea9aab6f61e8f7f7190cd007b1bd81cfc7cd6140bf7ab855da"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.181.0/bird-darwin-arm64.tar.gz"
      sha256 "63be08bcbd4a7955cc98323c461596deadbaca8b8d66bcbd31cdcc3e5dbf9678"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.181.0/bird-linux-amd64.tar.gz"
      sha256 "5a502d3ce53a0681b8068dddee4f9ebd62896bd3164c4c443b268cd6b3941908"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.181.0/bird-linux-arm64.tar.gz"
      sha256 "edfc118642f81abc64663611ea2e99e85a1a6c579595fcae10769aa4ec7f8a77"

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
