class Blatt < Formula
  desc "PDF statistics for macOS — page counts, document counts, file sizes"
  homepage "https://github.com/MichaelGajda/blatt"
  url "https://github.com/MichaelGajda/blatt/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "5031cf09e78d3d5c6941aa37681575e4a5f84f777ccc75f91c94f9a93d6a2723"
  license "MIT"

  depends_on :macos

  def install
    bin.install "src/blatt"
  end

  test do
    assert_match "blatt v", shell_output("#{bin}/blatt --version")
  end
end
