# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slr < Formula
  desc "slr"
  homepage "https://github.com/sikalabs/slr"
  version "0.12.0"

  on_macos do
    on_intel do
      url "https://github.com/sikalabs/slr/releases/download/v0.12.0/slr_v0.12.0_darwin_amd64.tar.gz"
      sha256 "346f601dafd5a22727fd95f25dd0a23354bdf53a8d9b85148cb6c513866fbcdf"

      def install
        bin.install "slr"
      end
    end
    on_arm do
      url "https://github.com/sikalabs/slr/releases/download/v0.12.0/slr_v0.12.0_darwin_arm64.tar.gz"
      sha256 "c216b684ffcef664a4bad3b19e2f8ea4c450e75603383a7a82f2a84c3ff8d9ba"

      def install
        bin.install "slr"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.12.0/slr_v0.12.0_linux_amd64.tar.gz"
        sha256 "356aa485c052a62dc1f5c5d1649bd1cb8f087cd292a78370b8a9d6fe6b899459"

        def install
          bin.install "slr"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.12.0/slr_v0.12.0_linux_arm64.tar.gz"
        sha256 "0b038e8f3cb4b0fde507664027a89fe62f44e1fd01e29ca2a0ae084835517fb0"

        def install
          bin.install "slr"
        end
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/slr
    EOS
  end

  test do
    system "#{bin}/slr version"
  end
end
