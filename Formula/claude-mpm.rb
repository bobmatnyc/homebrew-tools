class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/84/08/3ba75c14b4c326497dbdea61321ecd9b11231f6d8334086d00aaa4b750c8/claude_mpm-5.4.9.tar.gz"
  sha256 "27b76adabcfd21da92d18c26aa345bc955c18223e5170b029b2b76d82e504a12"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
