# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.77.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.77.1/bird-darwin-amd64.tar.gz"
      sha256 "e52506485f455e8238bcd30b653371fff810f08bf7c5fea76f4dfc2d59ed2e30"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.77.1/bird-darwin-arm64.tar.gz"
      sha256 "27375681ccbd062520ac8778fdfb7f357dfbb5edd5a662a2cb66334e6a141ece"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.77.1/bird-linux-amd64.tar.gz"
      sha256 "866907f44c7e173be7823639fac52413572181fcb1f3c0d634e79518b55fd401"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.77.1/bird-linux-arm64.tar.gz"
      sha256 "f3dc49bcc556c00233eb5b506f35ce54285473813cff08900a098b106a71aeff"

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
