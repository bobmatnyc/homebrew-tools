class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/e5/89/ce7fe429e0aa38fd6e21a5427afbfe4a45f8a519819ccb5d7b578f700a64/claude_mpm-5.6.32.tar.gz"
  sha256 "24b730b6379bb83c28b0b9a33e66b7e7c153d8e03b2cf7c704c92b52c7bc66a8"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
