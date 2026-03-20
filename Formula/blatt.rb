class Blatt < Formula
  desc "PDF statistics for macOS — page counts, document counts, file sizes"
  homepage "https://github.com/MichaelGajda/blatt"
  url "https://github.com/MichaelGajda/blatt/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "6d5e0046aadf173d9c9367aa300c56e3a6d42211e78208c9de2d5efdd6e5c4ce"
  license "MIT"

  depends_on :macos

  def install
    bin.install "src/blatt"
  end

  test do
    assert_match "blatt v", shell_output("#{bin}/blatt --version")
  end
end
