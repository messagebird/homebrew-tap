# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.87.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.87.0/bird-darwin-amd64.tar.gz"
      sha256 "2e6f116948420cb3fc1c85dd5684af210cdd9d218f1122fff45d8dd27da165bb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.87.0/bird-darwin-arm64.tar.gz"
      sha256 "13105470cfd2b2644bd92b6860fbe0180d710a2004ee6087c5949078772fd330"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.87.0/bird-linux-amd64.tar.gz"
      sha256 "2f3a16e25078fe367acb7ebbac259897c88e1ec60c4cd0d7c952324bf97c7966"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.87.0/bird-linux-arm64.tar.gz"
      sha256 "696faedcae2ac0f566c0ae8acc45c2b47549e1cf91d7c5e08b0f53f013de2c00"

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
