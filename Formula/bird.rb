# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.5.3/bird-darwin-amd64.tar.gz"
      sha256 "ab853871eee91d9530bc1ef60bbeb33882819c43857b7774af7a41acc3edbe4f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.5.3/bird-darwin-arm64.tar.gz"
      sha256 "69bb818d98cd3a46e3e20ea7044bd84930a64094b928b726a402fac563909dbe"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.3/bird-linux-amd64.tar.gz"
      sha256 "9fc4a7addcd92e1c76635e980bc3f4cda4d093ca75d14db2f114592a09a4c20a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.3/bird-linux-arm64.tar.gz"
      sha256 "ad16019dc31c3f5af30ca90e7fad693a5ba40408a81f11512d0e2a04246701f8"

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
