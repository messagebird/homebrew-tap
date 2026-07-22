# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.10.0/bird-darwin-amd64.tar.gz"
      sha256 "597b7d6f2b0c7c3b3f06e99cae5c5a69e384533c4c7853bd3fc9b78f0d282a9d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.10.0/bird-darwin-arm64.tar.gz"
      sha256 "d10ec366cde849ccb956977d8187dae2cc9d0c89ce6c353a4bac46ce789d3ff1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.10.0/bird-linux-amd64.tar.gz"
      sha256 "41c853d303a45a945be7c07bcc184b1c22cccec39d931cc1c34e8ae3029421dd"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.10.0/bird-linux-arm64.tar.gz"
      sha256 "33ffe6d55484b1149b7bd31f036e684d7ee174aec859bed893cbfd9644a9650a"

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
