class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/6c/36/ca5d5332e5c30f5f8bbef45920552e9f0dad177fabfc3b1e2788c6398798/claude_mpm-5.1.6.tar.gz"
  sha256 "b038dcc0278035a2fba2f86d7aef1ec27350268702f6cb4cd21c76230376dbea"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
