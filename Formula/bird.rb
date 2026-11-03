# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.150.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.150.0/bird-darwin-amd64.tar.gz"
      sha256 "673f667bfc635d0399ccebee5769ba1ecac2ad8c5e1cf24d721f7ea096cabc1e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.150.0/bird-darwin-arm64.tar.gz"
      sha256 "8081e9e0715a8e50bbdee35cb753c0f110348df9a546157467c77d80d19edfa2"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.150.0/bird-linux-amd64.tar.gz"
      sha256 "e299f762ac75885204a0dc7c6b29557c0608c0823110cfc5c7b2b408d40374d4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.150.0/bird-linux-arm64.tar.gz"
      sha256 "5d2e680783aa3e13e3af37df12cf57c326bd5301b6922ecb3686073672d2f85d"

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
