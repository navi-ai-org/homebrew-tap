# frozen_string_literal: true

class Navi < Formula
  desc "Coding agent engine with a terminal UI — read, write, test, and ship code"
  homepage "https://github.com/navi-ai-org/navi"
  version "0.3.5"
  license "Apache-2.0"

  # Distinct from homebrew/core's `navi` (denisidoro interactive cheatsheet).
  conflicts_with "navi", because: "both install a `navi` binary"

  on_macos do
    on_arm do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-darwin-arm64.tar.gz"
      sha256 "eb7a131f63d99a7467e6fa5b324d227824b41d264f0c253792bee5640c7a34c1"
    end
    on_intel do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-darwin-x64.tar.gz"
      sha256 "83f1fb67a440edca915abdea20bdcc4c44bae5ce2c42ef6af35ed6a2c066e6fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-linux-arm64.tar.gz"
      sha256 "31d7e11425264e6981cc013385fd6e593b81c6f61fc5cbaaf322f57ec88327a0"
    end
    on_intel do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-linux-x64.tar.gz"
      sha256 "362cc496eaae5344fbb008fe743783e4f506f22d63d2521ba616637bd5c5675a"
    end
  end

  def install
    bin.install "navi"
  end

  test do
    assert_match "Usage: navi", shell_output("#{bin}/navi --help")
  end
end
