# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.7/bird-darwin-amd64.tar.gz"
      sha256 "3c36f4c39be4fce4b8c893cf359515e1dbe6af4e183834eee185a62774956827"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.7/bird-darwin-arm64.tar.gz"
      sha256 "440a140c9f904a288973be1c02b717cd755dc735dcc50fb77d93faa0ddc69729"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.7/bird-linux-amd64.tar.gz"
      sha256 "6ad2847a5fb993c182ca5e449086e0e4487ea53d1d097f8f7be07b2dd124204e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.7/bird-linux-arm64.tar.gz"
      sha256 "6ddda0586a77f92813aa4dc004fa4d9fe429cb2f9020175fbed6cebb140fabb7"

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
