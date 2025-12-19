class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/a9/bd/cefac665d64974f81b26e24eb7bb06c5b53688d2791615fdb8bf532088eb/claude_mpm-5.4.10.tar.gz"
  sha256 "86150ad06a9464297cc2178391690240cf89e486212f1b8ebcf1449ab9afd38b"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
