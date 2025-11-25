class KuzuMemory < Formula
  include Language::Python::Virtualenv

  desc "Lightweight, embedded graph-based memory system for AI applications"
  homepage "https://github.com/bobmatnyc/kuzu-memory"
  url "https://files.pythonhosted.org/packages/2c/ae/d417c7c299f20b8cd71f07e0b499224a5588ae4a15f15bb012e91f9918e7/kuzu_memory-1.5.1.tar.gz"
  sha256 "a29d0c11b526d8ee932b99f71ee56f0d8d7f2183b3b938a17fc177a2a55e01c4"
  license "MIT"
  version "1.5.1"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"kuzu-memory", "--version"
  end
end
