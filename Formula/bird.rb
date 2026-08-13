# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.34.0/bird-darwin-amd64.tar.gz"
      sha256 "7141279c9f1cf41c53cc667eaa763c5051922539e95cf45b5751a924375a7dc7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.34.0/bird-darwin-arm64.tar.gz"
      sha256 "ed115944b7582d36fbb57f5b996143df5abdd9a1e381754d29ffb6a7f4c749e4"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.34.0/bird-linux-amd64.tar.gz"
      sha256 "57ed9a114f1675204e64881d7246bd3255722691853647cf7fe0a1b18c9aca95"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.34.0/bird-linux-arm64.tar.gz"
      sha256 "5dfd946ea72c9c9c3663e0276fe761ba23071c67232919a9bb86d9fc91c4a505"

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
