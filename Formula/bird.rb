# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.161.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.161.0/bird-darwin-amd64.tar.gz"
      sha256 "0b68bb20c1cfbb0a609a7ea5ff1d9cca796b877191349e34b448c6386e6699ae"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.161.0/bird-darwin-arm64.tar.gz"
      sha256 "869ee9196321b1fbc6aec3063a01a616358e8037be85fa58ee33b97624be9ac2"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.161.0/bird-linux-amd64.tar.gz"
      sha256 "dd46198050b6cc354e0183ae6d7efeca3624a90afb38691c168e5c60930f2e88"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.161.0/bird-linux-arm64.tar.gz"
      sha256 "a01642fcd26ed7c22c1d3f442fa81b63f4614a3b4996133fc50cb0f6005d6b93"

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
