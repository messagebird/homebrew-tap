# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.3/bird-darwin-amd64.tar.gz"
      sha256 "03207bf7f51332489307bea749adba2fd4753f109c48e349f5ea482e39755b61"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.3/bird-darwin-arm64.tar.gz"
      sha256 "bb8e1e290be968d10bb7aeba5da72734267f8fcff8cbcb99b7ce2e99434452bf"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.3/bird-linux-amd64.tar.gz"
      sha256 "51b81dd7ab92efed516fcd53eab5b1465822d94d0a52a7ab775193c041bbbf56"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.3/bird-linux-arm64.tar.gz"
      sha256 "5d0a57edc8a8fbe3e41f451690452f70cc379bd266f8258523b7647b35dc1cd8"

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
