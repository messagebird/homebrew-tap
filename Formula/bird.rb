# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.160.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.160.0/bird-darwin-amd64.tar.gz"
      sha256 "6f25798aaecadd7867c68df69dd1506a42e1de7961c563c60096476ab66e2bb4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.160.0/bird-darwin-arm64.tar.gz"
      sha256 "0baa29acc82a4cd1d781c6b9298c4b9d7a2238fab589e6a6f027e4ed84da79ff"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.160.0/bird-linux-amd64.tar.gz"
      sha256 "97e4e10d20a43492cdefc367b967949138af74e743192c34cbe60b2004fcead0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.160.0/bird-linux-arm64.tar.gz"
      sha256 "5fca439c67235940abf9d2a951d411450789f9114896637d766038df5321db76"

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
