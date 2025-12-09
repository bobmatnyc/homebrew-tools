class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/source/c/claude-mpm/claude_mpm-5.0.6.tar.gz"
  sha256 "52bbfafb5e46d8df23700ec08d0b16bb01dea1024934e49e5011d6abba565851"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
