# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.125.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.125.1/bird-darwin-amd64.tar.gz"
      sha256 "7ac7e257927c9305860ac0bdf35ecb23c9b36c5271c49ca0fdb63cf039bee8d0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.125.1/bird-darwin-arm64.tar.gz"
      sha256 "9a706fdd369515e5d10ef2f8225ac376262dbf0c4fb783615a50e82939a18020"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.125.1/bird-linux-amd64.tar.gz"
      sha256 "af1141a0ef89b519a781250415aa978c4e0ee0667fbf43138c27228d110b7a44"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.125.1/bird-linux-arm64.tar.gz"
      sha256 "3ce3095e9fbb7a86fc2189725e68e9ae3a7e30aaa4a9a747c10b51bfde3be982"

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
