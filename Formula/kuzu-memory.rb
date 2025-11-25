class KuzuMemory < Formula
  include Language::Python::Virtualenv

  desc "Lightweight, embedded graph-based memory system for AI applications"
  homepage "https://github.com/bobmatnyc/kuzu-memory"
  url "https://files.pythonhosted.org/packages/fa/e4/97b724e4cfe446d22fb8ecde6ee2ca09eea12f138e57e99947e67dab9994/kuzu_memory-1.5.0.tar.gz"
  sha256 "9bfab0816c74360ced3c706a15802c947bd718cf11550aafd341dd0c8134bf87"
  license "MIT"
  version "1.5.0"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"kuzu-memory", "--version"
  end
end
