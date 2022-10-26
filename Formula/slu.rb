# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.55.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.55.0/slu_v0.55.0_darwin_arm64.tar.gz"
      sha256 "70300b3660fdd9e16359a65035975ded98a09b9e60e2f2610a96a0de9ff226ab"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.55.0/slu_v0.55.0_darwin_amd64.tar.gz"
      sha256 "af7fa6c8f6abca3883a662311c2703b5753bab85b3110ce1e3d244c15228d12c"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.55.0/slu_v0.55.0_linux_arm64.tar.gz"
      sha256 "fb5fffa2eda54cef55b7dc2b74025e3ff9a4ec68c0a96c3fc4d74f09ac60bfcf"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.55.0/slu_v0.55.0_linux_amd64.tar.gz"
      sha256 "f99b54f8ff3e07e5fe022055b59cae1bf17a7becacd503a0dab6ed00b191a4ed"

      def install
        bin.install "slu"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/slu
    EOS
  end

  test do
    system "#{bin}/slu version"
  end
end
