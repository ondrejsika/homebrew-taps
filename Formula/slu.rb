# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.54.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.54.0/slu_v0.54.0_darwin_arm64.tar.gz"
      sha256 "97e5bbf9599b3323572124249f551792871caa937051668b9cbb6ee0df54e455"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.54.0/slu_v0.54.0_darwin_amd64.tar.gz"
      sha256 "eb15f0d1ab77c4ca17812f0c32258e9a84a522874edee0dc0e836720b884ea04"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.54.0/slu_v0.54.0_linux_arm64.tar.gz"
      sha256 "4d9965f9e6677306c33f8e68d975b76276cb47e15fa67f2fe91a00bf49bd1541"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.54.0/slu_v0.54.0_linux_amd64.tar.gz"
      sha256 "32fe85ed257e5d841ca6f9ba8159298d65443334ab37bf8fe1b91e956ace78b8"

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
