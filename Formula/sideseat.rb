class Sideseat < Formula
  desc "AI/LLM observability toolkit — traces, messages, costs in one UI"
  homepage "https://github.com/sideseat/sideseat"
  license "AGPL-3.0-only"
  version "1.0.11"

  on_macos do
    on_arm do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-darwin-arm64.zip"
      sha256 "4856e6ba8944f00632386be8a14d54366630cdbc750247cec3cf1b83abf50dd6"
    end
    on_intel do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-darwin-x64.zip"
      sha256 "2c1cad6e6a00d1a5fdcddfe5f682bc211a2f0afa4f67906f90e67e326b37ae37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-linux-arm64.tar.gz"
      sha256 "26fb5d1089eea9dd0f8206eb59cb90709f32846a243d1acaf5055594ce50a3f5"
    end
    on_intel do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-linux-x64.tar.gz"
      sha256 "c1fecc87f9fd1c846b113c6b57889b3baceb5c3915b7c3babea6ce955d69c2fc"
    end
  end

  def install
    bin.install "sideseat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideseat --version")
  end
end
