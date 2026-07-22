# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.11.0/bird-darwin-amd64.tar.gz"
      sha256 "85c190328182716b9d52e85507092f8fd341595230c1bb6ee9acaf1ff7ab9471"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.11.0/bird-darwin-arm64.tar.gz"
      sha256 "f4f3d48916f70efe7ad2644b4cd995c77047fb2474a5694e38dc2a27754799b4"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.0/bird-linux-amd64.tar.gz"
      sha256 "d26d6fedba3f5ec92242dd0e744824d024e1ab678548a169e857869a20775c64"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.0/bird-linux-arm64.tar.gz"
      sha256 "412f5f0c909e90c7b8ae987197a5d17096cc71a7e137db25691b72d5b16c2bdb"

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
