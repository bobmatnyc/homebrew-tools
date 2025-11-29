class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/b6/19/0922490a3b22fe8f301aae563da1c7cd39da3494acbf7abe146552ced562/claude_mpm-4.26.4.tar.gz"
  sha256 "7d98bb98a6c8753982618a33f418f89e1ef0adde35cfd4be46db800f17672467"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
