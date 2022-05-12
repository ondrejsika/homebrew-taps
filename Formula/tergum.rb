# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tergum < Formula
  desc "Tergum Backup Tool"
  homepage "https://github.com/sikalabs/tergum"
  version "0.28.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/tergum/releases/download/v0.28.0/tergum_v0.28.0_darwin_arm64.tar.gz"
      sha256 "b4a149132ef3c32d2cdd09f0c3f69005cf33620b3071da10da4737af8372c289"

      def install
        bin.install "tergum"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/tergum/releases/download/v0.28.0/tergum_v0.28.0_darwin_amd64.tar.gz"
      sha256 "c700796cf1240264fb2017ff3e6ea2b89bbce2d11fa5d37fb2be36a907d8b441"

      def install
        bin.install "tergum"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/tergum/releases/download/v0.28.0/tergum_v0.28.0_linux_arm64.tar.gz"
      sha256 "5edf28ec7e58d6bf80fc4532d68c435039279830b9f60e0cbd06ac9469f4d513"

      def install
        bin.install "tergum"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/tergum/releases/download/v0.28.0/tergum_v0.28.0_linux_amd64.tar.gz"
      sha256 "bdfcb2d6aa9f8999b0d82ec22ce8ba56d234aa287405d7ed792ec0c392bd33c2"

      def install
        bin.install "tergum"
      end
    end
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/sikalabs/tergum
  EOS
  end

  test do
    system "#{bin}/tergum version"
  end
end
