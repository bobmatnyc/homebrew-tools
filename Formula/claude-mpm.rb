class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/40/5e/11637ea830895bb3fbb9bbea2c52aad03c759d41a81fb7aa64d470655a96/claude_mpm-4.26.3.tar.gz"
  sha256 "719176e7557bfb3d046c443e158b6678bfec4f71d297784c823ea5a97e80fbd2"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
