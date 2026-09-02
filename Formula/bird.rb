# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.64.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.64.0/bird-darwin-amd64.tar.gz"
      sha256 "f050ed47ad8976d38c557a88210e0c27f7a359b531b196a009496405d2cbea20"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.64.0/bird-darwin-arm64.tar.gz"
      sha256 "eb2565c40184d1623f22d15ea6b5f3026acee7f653fbd530e21a3051ec9fffcf"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.64.0/bird-linux-amd64.tar.gz"
      sha256 "4d87eaf0d65440749ca4db71f8ea3088235a2536abe9d742a6ad5a94a3eae679"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.64.0/bird-linux-arm64.tar.gz"
      sha256 "4cddd755ceb8af28fdfaf8f0573632d7e51113fc85b4fe400cd7b90bcd269f68"

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
