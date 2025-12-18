class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/40/9b/8354202a1049aa5715eafc00dc64af6cf0db27a9d66153a324d3cf856791/claude_mpm-5.4.7.tar.gz"
  sha256 "998bff024de5d7b2504856321489be1e2ba23eb92ead175db4c3660431526fe2"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
