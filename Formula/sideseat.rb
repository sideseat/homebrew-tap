class Sideseat < Formula
  desc "AI/LLM observability toolkit — traces, messages, costs in one UI"
  homepage "https://github.com/sideseat/sideseat"
  license "AGPL-3.0-only"
  version "1.0.9"

  on_macos do
    on_arm do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-darwin-arm64.zip"
      sha256 "1fbe0057e94f910966b1f07500f2a883bd40f81c9726695e734d739ed3661721"
    end
    on_intel do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-darwin-x64.zip"
      sha256 "de3190f4ffad6972aa6aa88cbf95273257cee35438d7b884541617d235ed9abc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-linux-arm64.tar.gz"
      sha256 "86b5c821d07e2c970f77f1845ef8db5ec1a1e5ddac5b85a6af25c423fdb546e1"
    end
    on_intel do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-linux-x64.tar.gz"
      sha256 "4b057ba315edfa4341151fdc1a9b5e802ca38abc73b7e2fd1c6b57e453873295"
    end
  end

  def install
    bin.install "sideseat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideseat --version")
  end
end
