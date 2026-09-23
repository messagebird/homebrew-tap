# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.89.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.89.0/bird-darwin-amd64.tar.gz"
      sha256 "6fa53aa246c64c1313f8fd8c800f3141ab126247b3b4dbf76efa1feb56609095"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.89.0/bird-darwin-arm64.tar.gz"
      sha256 "8477e7f58427cb65ed75e214de67e112fac3c82518757cb62ebec6a653739d44"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.89.0/bird-linux-amd64.tar.gz"
      sha256 "e94e1020720fd2b63789e54cb6d7e01cdb89d8c1fac3f012f7d1cf21eedc748b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.89.0/bird-linux-arm64.tar.gz"
      sha256 "81ff0e1b50a9be4bb9d43a49c071bf5013aa9e46b7231dae72e3204cb380c558"

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
