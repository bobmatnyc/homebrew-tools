class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/f7/02/8a6586c68c6a701e5879b7b7b17589307c76ba05beeca8a95fa19cbac18b/claude_mpm-5.4.24.tar.gz"
  sha256 "f9ce8ed76095e7c1f1c228b3764f2e14a4ee69393d82e125e31f43c0617c0696"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
