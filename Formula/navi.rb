# frozen_string_literal: true

class Navi < Formula
  desc "Coding agent engine with a terminal UI — read, write, test, and ship code"
  homepage "https://github.com/navi-ai-org/navi"
  version "0.3.0"
  license "Apache-2.0"

  # Distinct from homebrew/core's `navi` (denisidoro interactive cheatsheet).
  conflicts_with "navi", because: "both install a `navi` binary"

  on_macos do
    on_arm do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-darwin-arm64.tar.gz"
      sha256 "7c170bd43caeedba8f56330bae6d86dffa7ddd1c6d86b1a74645010e74e0bb31"
    end
    on_intel do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-darwin-x64.tar.gz"
      sha256 "b2ca113d7820ab05a760a77b3f4c434e55848c153dcd85b0572b4319375eaff8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-linux-arm64.tar.gz"
      sha256 "3fb6598894501e4ae44f170f3780abe71967e241971f099d5783f49ebd16e1d7"
    end
    on_intel do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-linux-x64.tar.gz"
      sha256 "cb0a1a12c3ff14a6f4d18713f53f4ab90ae0c9737b17f0cbd85359c8f1669a78"
    end
  end

  def install
    bin.install "navi"
  end

  test do
    assert_match "Usage: navi", shell_output("#{bin}/navi --help")
  end
end
