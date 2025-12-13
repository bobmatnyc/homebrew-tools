class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/ae/29/e158aadf7d775d79f2918c541f01dea7b3cfbbc1a4b6fe4bb4dd151e13d1/claude_mpm-5.4.0.tar.gz"
  sha256 "67bc5d42bc53f7242833fd4a533e2eac248a1d97b171a0ddee4e9595b6a767fe"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
