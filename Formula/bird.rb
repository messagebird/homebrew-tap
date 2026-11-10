# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.166.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.166.0/bird-darwin-amd64.tar.gz"
      sha256 "a4f7d28ed7da8361fa8ff662d2955153acb30f4e8da0f4548f812acd3daacf99"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.166.0/bird-darwin-arm64.tar.gz"
      sha256 "8e49804d078dc1e782c906c0345f96b0476ab72d24eb37f3932d243c842cc541"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.166.0/bird-linux-amd64.tar.gz"
      sha256 "97de59f22db95a2127b8a850154397622e606e27464e4e4465e8b93889946538"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.166.0/bird-linux-arm64.tar.gz"
      sha256 "3148fd29d345e5e4419993f5f942c74ad42c947ef49ed290960e70ea06b679a4"

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
