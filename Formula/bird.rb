# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.28.0/bird-darwin-amd64.tar.gz"
      sha256 "61f613262ab02107cdd8805746f2e9a683639b710668812475b02cdd38a56ceb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.28.0/bird-darwin-arm64.tar.gz"
      sha256 "8c79d7ddca9b1d2796f8876e33fd57a35e29ed94ed49fc3c1e8b6d2a3317634a"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.28.0/bird-linux-amd64.tar.gz"
      sha256 "82ceee28fc5ba93fb1a7b01161d6a6df4a5624f0bb176a95d9289dda8354fec6"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.28.0/bird-linux-arm64.tar.gz"
      sha256 "af8e5a603053896a9dcdd8702dcc09cda79ff05465bf45b94e1568ae1da9fdd1"

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
