class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/69/7d/de50417654cd6d53c9d4698e751450673df931c2bcf1bd32d2b7d8ecfff8/claude_mpm-5.4.21.tar.gz"
  sha256 "c7509a3aec6a31fc34f384aa166e585809c68130f03625638bd90e18ac0f289a"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
