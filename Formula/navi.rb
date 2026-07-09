# frozen_string_literal: true

class Navi < Formula
  desc "Coding agent engine with a terminal UI — read, write, test, and ship code"
  homepage "https://github.com/navi-ai-org/navi"
  version "0.2.2"
  license "Apache-2.0"

  # Distinct from homebrew/core's `navi` (denisidoro interactive cheatsheet).
  conflicts_with "navi", because: "both install a `navi` binary"

  on_macos do
    on_arm do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-darwin-arm64.tar.gz"
      sha256 "c2977a483bdb774f3e80f80f1c63ab3964894339600b33738f5ee6cdaf69c08c"
    end
    on_intel do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-darwin-x64.tar.gz"
      sha256 "59cbb41ef502ed683a04ca597ab4c88be562af5a1767b5d23f366b7473c09153"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-linux-arm64.tar.gz"
      sha256 "6752d0d1d6940b925df19a2bf667ce544e7f94feed7545e470b30f32ef84cc8e"
    end
    on_intel do
      url "https://github.com/navi-ai-org/navi/releases/download/v#{version}/navi-linux-x64.tar.gz"
      sha256 "4b7092655f3d3205736391ad8d57dff4034ff18a2d0e87387e1455c36d656515"
    end
  end

  def install
    bin.install "navi"
  end

  test do
    assert_match "Usage: navi", shell_output("#{bin}/navi --help")
  end
end
