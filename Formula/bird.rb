# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.5.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.5.6/bird-darwin-amd64.tar.gz"
      sha256 "7e3a6c90422912c00ea8f12fa3fa423749fb2b01a7efb0dbf3b2689813bb51a7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.5.6/bird-darwin-arm64.tar.gz"
      sha256 "2491add8380b85d112fb8b71e27cf3f270a658fea7d34986ed2cbb1112c4afdf"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.6/bird-linux-amd64.tar.gz"
      sha256 "2aaa3ddad99c8b9251d1e03f9a18fa3003574458217cecfedf3e7ccabea43d9c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.6/bird-linux-arm64.tar.gz"
      sha256 "7fcfdfcb77109158b700a92815f169591afc121b20ffeae3f2cb39c244b07a2e"

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
