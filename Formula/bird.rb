# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.163.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.163.0/bird-darwin-amd64.tar.gz"
      sha256 "a91b2ec1dd0715d6f8a571acf4d42cc3668b8e7b255b1242f51b3e030ab61e5a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.163.0/bird-darwin-arm64.tar.gz"
      sha256 "845f7e5ab9888ef52100e6d69f537e5904818c2e89676edfab0652fcbbd5c45e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.163.0/bird-linux-amd64.tar.gz"
      sha256 "cd7f33094c9d5b296ef348cf2d5e025eaf463f9180680081e627328281bfb68c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.163.0/bird-linux-arm64.tar.gz"
      sha256 "6aa187d7fdd422ba3edb2d611ef2013d176a70666372b29429327eb6b6f10962"

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
