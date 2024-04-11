class Lop < Formula
  desc "Command-line utility for shortening links and sharing code and files"
  homepage "https://github.com/jake-walker/lop"
  url "https://github.com/jake-walker/lop/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e59f554f0e43c28752cfddd4e14cd9139951b6d49e10dbac5a112cc0e88abdf5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "lop #{version}", shell_output("#{bin}/lop -V").strip
  end
end
