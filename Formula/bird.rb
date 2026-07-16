# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.9/bird-darwin-amd64.tar.gz"
      sha256 "8b44be818143efd55ebaf712534e85f2e1c752f1a5eae7416d56549fe5835696"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.9/bird-darwin-arm64.tar.gz"
      sha256 "842bd51efbf2228bf171ce9274dd5018c929312a13231b747ebd9f1c3e828205"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.9/bird-linux-amd64.tar.gz"
      sha256 "57bd5916f367d3ecb311bcb80fd694fe1ca65c143c778843fd9aa00600ef67a2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.9/bird-linux-arm64.tar.gz"
      sha256 "64aba7310552bc1108049a5dc08fcc2d27fb3f63bc091c7ea586b3fad2ba92b6"

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
