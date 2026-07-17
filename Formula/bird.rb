# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.8/bird-darwin-amd64.tar.gz"
      sha256 "46bab140a6c1c1f2739b714c875eb6eff1d2d45d258821299103588ff1ff9529"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.8/bird-darwin-arm64.tar.gz"
      sha256 "8d62191cfbdcb6a6beef25b53eb82d159ab27255bf0344a7e8f1b36f220cf313"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.8/bird-linux-amd64.tar.gz"
      sha256 "fb8eeabe2d7510f84859e68a59d130273372b739dbf6a7fa6ba028548e67933b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.8/bird-linux-arm64.tar.gz"
      sha256 "1543ad70fcc2949afcf6f1462e3267ab043ae01b707a6ae98c3258e83268e6ad"

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
