class Markplane < Formula
  desc "AI-native, markdown-first project management"
  homepage "https://github.com/zerowand01/markplane"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.1/markplane-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "93c9d72cdd2727d1f15ee94188e2a1c9ee15c885450e07e39c19a06a33fb131f"
    end
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.1/markplane-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "641ee76fb24d681d0c63f6c71f2c605eacc9357ccd0f02c84f163e603ded19aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.1/markplane-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1dcf1a80357691cb46315bccee6e5654a22fade2f292ced053e8b159a7a68742"
    end
  end

  def install
    bin.install "markplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/markplane --version")
  end
end
