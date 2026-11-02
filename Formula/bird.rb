# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.146.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.146.0/bird-darwin-amd64.tar.gz"
      sha256 "a5ab2f8fe976dfe76025336ffdb28f6534e198ce0b35ce2b41767964be57fa0d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.146.0/bird-darwin-arm64.tar.gz"
      sha256 "17932a58791be996bafc0c0dc93d3e64b35077c20cb6ec5560b8b651c0bf28e7"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.146.0/bird-linux-amd64.tar.gz"
      sha256 "9efd4e90a2e716e1d753f303b91c224740688b43480ff9747aef14d062ca5d81"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.146.0/bird-linux-arm64.tar.gz"
      sha256 "decd99675307f270aaabb55ae6065236aaca2a0f93ecb39da2894411cd3632a6"

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
