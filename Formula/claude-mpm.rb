class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/8e/25/c9ecbeba1e920e2d8025649527b26a1d6adbc9d7de8456563849414658be/claude_mpm-5.0.2.tar.gz"
  sha256 "8bc79eb88148ee35557a3fc5715f5136fa3ea5057f491c5d3c3d88cc3d614ace"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
