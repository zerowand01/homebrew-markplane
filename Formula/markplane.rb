class Markplane < Formula
  desc "AI-native, markdown-first project management"
  homepage "https://github.com/zerowand01/markplane"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.2/markplane-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "fa9c4fc06e37a1ac1bbeb88c243ab8154106234065433f3942dbb1b53f2e52a5"
    end
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.2/markplane-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "332cfafb7156ed20c6856a64a9eb6e7c6fec8f6dcfad150aa958f21d03a02bd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.2/markplane-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60a8d9a54900993911f0be19a98fcff5ba9d2300f565f3f1acfc4299db8864a9"
    end
  end

  def install
    bin.install "markplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/markplane --version")
  end
end
