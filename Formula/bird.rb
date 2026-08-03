# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.18.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.18.1/bird-darwin-amd64.tar.gz"
      sha256 "0a1bef8481de202284018edfa62f658f14eb682b9b7edbc7bee82c72f8796566"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.18.1/bird-darwin-arm64.tar.gz"
      sha256 "2502c2fa71fe6efac2bee4feaae3c9729ef91b427e05b6e22779478cebd2999f"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.18.1/bird-linux-amd64.tar.gz"
      sha256 "f13277d37a2c252a6ca900651b11bd1da1250b3af84d588dce19fcb9fb8303f5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.18.1/bird-linux-arm64.tar.gz"
      sha256 "17334c11a362a71ed25c2e8db49f1311a5d87043d6b735213913fd150b0dcb67"

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
