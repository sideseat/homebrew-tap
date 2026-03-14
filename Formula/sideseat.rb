class Sideseat < Formula
  desc "AI/LLM observability toolkit — traces, messages, costs in one UI"
  homepage "https://github.com/sideseat/sideseat"
  license "Apache-2.0"
  version "1.0.13"

  on_macos do
    on_arm do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-darwin-arm64.zip"
      sha256 "491db246b37c510d4bbcfb85bf9b0ac8eb2b65921de4c4fc8adfdfa516bdc1c8"
    end
    on_intel do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-darwin-x64.zip"
      sha256 "a2a1f27e2d37a13de86cd7e2900094c7ffc8cda913383954c5e0fff0018b9eda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-linux-arm64.tar.gz"
      sha256 "cd8fed6cfd9dc01ec612d415f3016bd91c136a422cdd2e98064fa1ccf6a5df87"
    end
    on_intel do
      url "https://github.com/sideseat/sideseat/releases/download/v#{version}/sideseat-#{version}-linux-x64.tar.gz"
      sha256 "dfc9172805611bfae6e1711b44aad0c201d525534124a01c20f7654011fc8732"
    end
  end

  def install
    bin.install "sideseat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sideseat --version")
  end
end
