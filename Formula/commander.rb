# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Commander < Formula
  desc "Commander is a command line tool that uses large language models like OpenAI's GPT-4 to generate commands based on a question."
  homepage "https://github.com/bgrewell/commander"
  version "0.4.1"

  on_macos do
    on_intel do
      url "https://github.com/bgrewell/commander/releases/download/0.4.1/commander_0.4.1_darwin_amd64.tar.gz"
      sha256 "a44789c4e470d659fc088b0451d09126f651ebf30ad300fac4916cf86f4e2091"

      def install
        bin.install "commander"
      end
    end
    on_arm do
      url "https://github.com/bgrewell/commander/releases/download/0.4.1/commander_0.4.1_darwin_arm64.tar.gz"
      sha256 "17d901d08dd7efac40d402a872b0be50fde8398330284cf6e8bb4b8e74007e32"

      def install
        bin.install "commander"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bgrewell/commander/releases/download/0.4.1/commander_0.4.1_linux_amd64.tar.gz"
        sha256 "92fea4db05940b61067154a36eb91d701a0f1f5fdaf83059e0684095878699fd"

        def install
          bin.install "commander"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/bgrewell/commander/releases/download/0.4.1/commander_0.4.1_linux_armv6.tar.gz"
        sha256 "1860212b3c1fb049e27e3c681b911ac4082210f3f7c9c630a68cdf679ddae307"

        def install
          bin.install "commander"
        end
      end
    end
  end

  test do
    system "#{bin}/commander --version"
  end
end