class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/62/7f/030140045b00745103054ef003b45e604a47f9c53003a69877faa4db24cf/claude_mpm-5.4.4.tar.gz"
  sha256 "7fc10ddcfd15cf8f17790d68aa6dc62bc24f2e6899e6575d537148e8836c6128"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
