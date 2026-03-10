class Markplane < Formula
  desc "AI-native, markdown-first project management"
  homepage "https://github.com/zerowand01/markplane"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zerowand01/markplane/releases/download/v#{version}/markplane-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4e81249c972f57311fdbd9529c714f4e3e19b0d81b0a70fbd067083eb0bf046f"
    end
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v#{version}/markplane-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "aa8f8912be45d074eb3bfc89d237e60c41844a4507270a748b5e709da982a9c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v#{version}/markplane-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9672328c257d9176de3877911ea4aab225818be467411371b21844d18e6826f6"
    end
  end

  def install
    bin.install "markplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/markplane --version")
  end
end
