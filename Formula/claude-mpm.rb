class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/e3/43/82ee3a28770923eb0d1a3a2766b9e0c4c7a870b464902cb4b818ebc53e5e/claude_mpm-5.4.5.tar.gz"
  sha256 "a08e0a1ddd36c568caaa687e67b061c6f65500eac4db8f3e8ac3479d24905045"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
