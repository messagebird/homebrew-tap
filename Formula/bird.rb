# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.7.1/bird-darwin-amd64.tar.gz"
      sha256 "a41f4123b9570f7284890859750563801beb7c265a3e1bdee653e0e5fb35620c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.7.1/bird-darwin-arm64.tar.gz"
      sha256 "bba6a14f2c806a38507ebbeebb466617111aa1ffb192b5152aaf7638df53563d"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.7.1/bird-linux-amd64.tar.gz"
      sha256 "f91456984041158e7d69f2c414b5a23184a6859348926ee700613b91e1e0e511"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.7.1/bird-linux-arm64.tar.gz"
      sha256 "6aaca6b50b66ddc2655447fea3a351e35e8ac277eaee205f4b6ae8885706217f"

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
