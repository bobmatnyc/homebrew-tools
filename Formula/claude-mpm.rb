class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/28/5c/b36c7f56b952615f98aa39e48670b0885e20c3ef55fb7e6d7bcd62c2e51c/claude_mpm-5.0.9.tar.gz"
  sha256 "3c0bbf3797f37ad82af980b78d4d5134200082ee904592bf1ac3a25ce29d4c65"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
