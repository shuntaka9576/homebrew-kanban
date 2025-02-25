# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cal2prompt < Formula
  desc "✨ Fetches your schedule (e.g., from Google Calendar) and converts it into a single LLM prompt. It can also run as an MCP (Model Context Protocol) server."
  homepage "https://shuntaka.dev/"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shuntaka9576/cal2prompt/releases/download/v0.3.0/cal2prompt_0.3.0_darwin_amd64.tar.gz"
      sha256 "093589edde17a2f2067fa3126a0b2e409f124c4898a90be7e76d0a13dd4494be"

      def install
        bin.install "cal2prompt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shuntaka9576/cal2prompt/releases/download/v0.3.0/cal2prompt_0.3.0_darwin_arm64.tar.gz"
      sha256 "bff7932cf9bd3033f9c0255ffc5cbc5a84bbb505287316e907c701a22c2cfe5c"

      def install
        bin.install "cal2prompt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shuntaka9576/cal2prompt/releases/download/v0.3.0/cal2prompt_0.3.0_linux_amd64.tar.gz"
        sha256 "fcae693d4e5a07aa054f02d4b5f462202427f8f71eae55592c02ad54ec865015"

        def install
          bin.install "cal2prompt"
        end
      end
    end
  end

  test do
    system "#{bin}/cal2prompt --help"
  end
end
