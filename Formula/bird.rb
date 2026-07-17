# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.2/bird-darwin-amd64.tar.gz"
      sha256 "781c064c23190a809aa843b657480d6b4e090cdbf065a9b6ac25152a349e6479"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.2/bird-darwin-arm64.tar.gz"
      sha256 "3827a0305c334feb3930a1f3af7410c8ba76caf93dcfbf58dd508b37d2a8cdf1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.2/bird-linux-amd64.tar.gz"
      sha256 "a183741304efed3ff695307f6a24b62cf9ed664bbadb49069ce8be9810cd1d97"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.2/bird-linux-arm64.tar.gz"
      sha256 "ef4cd9bf0d9c856aa35b8a1451d96e06afecbd7f544c6b850aa988e19e424653"

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
