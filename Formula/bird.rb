# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.23.1/bird-darwin-amd64.tar.gz"
      sha256 "5fb0f79c47c1af9bf2793a58d80a64a4d2e53d632963d3bf6bd35823f8078e35"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.23.1/bird-darwin-arm64.tar.gz"
      sha256 "1cfdaf3baaeaab9c91226138c00aafa4df461aa3f6d28abf3aba90254772c0e5"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.23.1/bird-linux-amd64.tar.gz"
      sha256 "e4c38948e81e241622001f1de7e5d911719dfde1cf6a4040bc7b13eef55b2c29"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.23.1/bird-linux-arm64.tar.gz"
      sha256 "98760a9f93434f747da1e82936fe7bcf60ea102d3093bb5e91ac17c02553062a"

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
