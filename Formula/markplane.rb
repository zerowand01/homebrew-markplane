class Markplane < Formula
  desc "AI-native, markdown-first project management"
  homepage "https://github.com/zerowand01/markplane"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.5/markplane-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "07f6a12d2f81c096982ca315b1ab24515335ce5a323d56e3c807ca1fa5ad4f79"
    end
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.5/markplane-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "c9d2af3ddf97aaef4eb7c64ecf08020b0fe6021400fa01a28b9ab0814dccace2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zerowand01/markplane/releases/download/v0.1.5/markplane-v0.1.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "559c006aaf8e5ad2be349006e77d77302208ac4c667dd70b062eff5c8ed0b068"
    end
  end

  def install
    bin.install "markplane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/markplane --version")
  end
end
