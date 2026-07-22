# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.11.2/bird-darwin-amd64.tar.gz"
      sha256 "2a871800d5af682c1948ebe49ff1108c3dc45e1c92df793fe169893faaf40ef8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.11.2/bird-darwin-arm64.tar.gz"
      sha256 "44a0e51475f183001082cdf905a810e5b3b47f389fa917ce29be23d27c5cb366"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.2/bird-linux-amd64.tar.gz"
      sha256 "184f3c909132c569152292dffaef684c1f61a2fc219b6cd5cd0c4927c8746480"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.2/bird-linux-arm64.tar.gz"
      sha256 "1c8ae301d671130534b2c82e89a65572e70d4ffbba0458b0c59f9fd5c1cbef14"

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
