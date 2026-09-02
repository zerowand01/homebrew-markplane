class Markplane < Formula
  desc "AI-native, markdown-first project management"
  homepage "https://github.com/zerowand01/markplane"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.3/markplane-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "d1f31680503831df8c28062fc21d2f3de1d4b06ea74f43edc818962d25eeb5c9"
    end
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.3/markplane-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "6fb0b88d81fcc30a8e61633e0c3ce786fc8aef95a2185dff9f2886d8bf9ffe3b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.3/markplane-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fa525678e9897caecd6c96d918b6b361768c6b030cfff871d0301efc185db7d1"
    end
  end

  def install
    bin.install "markplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/markplane --version")
  end
end
