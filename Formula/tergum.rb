# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tergum < Formula
  desc "Tergum Backup Tool"
  homepage "https://github.com/sikalabs/tergum"
  version "0.25.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/tergum/releases/download/v0.25.1/tergum_v0.25.1_darwin_arm64.tar.gz"
      sha256 "9ec9d4e14548fef9c39edf115597e5a53cde5e35b7c325e3f9628d03c234708d"

      def install
        bin.install "tergum"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/tergum/releases/download/v0.25.1/tergum_v0.25.1_darwin_amd64.tar.gz"
      sha256 "0e09fbef5ebf3ea3b44b8470de3d301786f5ab2a07041f624f3a31c0db3d68b8"

      def install
        bin.install "tergum"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/tergum/releases/download/v0.25.1/tergum_v0.25.1_linux_arm64.tar.gz"
      sha256 "cebeadfeb27016a19a69852775fc49eac65c8fd0137b828b5313701d472bf14a"

      def install
        bin.install "tergum"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/tergum/releases/download/v0.25.1/tergum_v0.25.1_linux_amd64.tar.gz"
      sha256 "00582d7fa67aa52f308d05c3115c2bf3df4ce4893f83a0a8c3a94ec5d62de57c"

      def install
        bin.install "tergum"
      end
    end
  end

  conflicts_with "tergum-edge"

  def caveats; <<~EOS
    How to use this binary: https://github.com/sikalabs/tergum
  EOS
  end

  test do
    system "#{bin}/tergum version"
  end
end
