class Markplane < Formula
  desc "AI-native, markdown-first project management"
  homepage "https://github.com/zerowand01/markplane"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.4/markplane-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "fdc84c4c58496a06a4b3af919a6355171f555c6e9bac10e64c6c268c719a99ca"
    end
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.4/markplane-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "f02dffeb26dc5c588c2c106df14d581b032f9528115f7d6764dafe4ce6c3d7ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.4/markplane-v0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f329d5333cbdcc4136b31e74bbd4a20d6183a293c8838b16dddead161776653f"
    end
  end

  def install
    bin.install "markplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/markplane --version")
  end
end
