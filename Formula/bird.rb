# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.179.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.179.0/bird-darwin-amd64.tar.gz"
      sha256 "c15d2a6169f387bca51bd2d16816d7f0531e816088ee919dce2d80ee1066f730"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.179.0/bird-darwin-arm64.tar.gz"
      sha256 "c4af88ff21c86e31d65a7275745b7039fec197714155c83afea2e8412a3074ff"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.179.0/bird-linux-amd64.tar.gz"
      sha256 "c48e8ea528793e9f10fe4623e68190d4158d48cc8b6f16af028cee6673df6cb4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.179.0/bird-linux-arm64.tar.gz"
      sha256 "6633ae86700169c1aab8cd87e131d4180654118880a0e09afbbe7e5308a76003"

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
