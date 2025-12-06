class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/24/21/098810c5a8c9d6600f983dd4c75bcee6ed1753c784143998bafecd40516f/claude_mpm-5.1.1.tar.gz"
  sha256 "cc771a696f15eae5e0971cbec0e341cf529594340304c7cde0d701b118da7143"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
