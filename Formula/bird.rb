# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.10/bird-darwin-amd64.tar.gz"
      sha256 "24dec00bc24c9aeb2bcd0e8aa190ab6f023fc3f71eeea7ff2ed16992fca45e6e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.10/bird-darwin-arm64.tar.gz"
      sha256 "8e82e2dc7e93fe44b26878b03e9b5426d45987780a3298ab772d079fa6da8f33"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.10/bird-linux-amd64.tar.gz"
      sha256 "4c0130d242bb57222a58acbef90f8bfbe96b74649939be6390f784754de5529b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.10/bird-linux-arm64.tar.gz"
      sha256 "8247c0d7766bcc53e876bbbb021fe8a77e5b3694f92479c6bb195cf4b4867a65"

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
