# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.79.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.79.0/bird-darwin-amd64.tar.gz"
      sha256 "f0c4c24ae11686aa260d8c0048120005e6d5455f7e44142264eea6aa8a21cf91"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.79.0/bird-darwin-arm64.tar.gz"
      sha256 "50903b59bed1724f13a9927676ca6abcc7b263aaa40a72bef865bf7bf9b9d1f5"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.79.0/bird-linux-amd64.tar.gz"
      sha256 "f8bc6df7ad06a2333f65ffcd1486bf3d8825f4c2e118bc46997d827af3a74533"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.79.0/bird-linux-arm64.tar.gz"
      sha256 "899fc0a1ac45d4c60512acedfc3ca21caded520eb4dc36cbe92914e0eac0c24f"

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
