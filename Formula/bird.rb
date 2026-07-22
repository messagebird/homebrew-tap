# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.11.5/bird-darwin-amd64.tar.gz"
      sha256 "1765e28f411723c21f85a9f683a5403dff378c012b7f9db38c8de646009d006b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.11.5/bird-darwin-arm64.tar.gz"
      sha256 "e7798782afbd0ba7f7f5170e4bc25934760757e8ec22fa97de6f3b17dd62eee1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.5/bird-linux-amd64.tar.gz"
      sha256 "58fcea6470ee301d8c02310139dcfbb3d290fa79cd68dbe9c1ecc0e2135df5d5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.5/bird-linux-arm64.tar.gz"
      sha256 "ddfe1ca986f23d484671e71eb0a2ab2fc2a598a0943a1c56fb9dd07f37a3a1d7"

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
