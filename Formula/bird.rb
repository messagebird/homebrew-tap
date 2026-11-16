# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.171.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.171.0/bird-darwin-amd64.tar.gz"
      sha256 "edf5efb63d6086ea65ee9e776a146a476e794a3ea64f2dc75c127a4709e09f82"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.171.0/bird-darwin-arm64.tar.gz"
      sha256 "4699873325d44c750ae285226ca3b76e760958581ea650b9d25b9048600cc6f3"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.171.0/bird-linux-amd64.tar.gz"
      sha256 "1457ea13bf2f91e5ff8e9e294ba80915ca5ae7b770006376fd27b237a44d2aea"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.171.0/bird-linux-arm64.tar.gz"
      sha256 "4c5455e12b687a1c0817652d0b43e9d809a0cb97715bcdefa5d6c49fff9fb7c4"

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
