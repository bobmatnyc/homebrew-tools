class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/68/8a/03aad0b09d6a77347cf4ac34e993dddde6b116e36e114ff27e995eb08955/claude_mpm-5.1.8.tar.gz"
  sha256 "0473d4b58dc954d151b8cde2743ce203b27216a8f6097773f038ac44cc729e34"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
