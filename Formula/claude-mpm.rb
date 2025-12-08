class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/8e/67/4c12fbdd44c13bd9b968390998ca28b7edf4c79da41470ea082840981dc7/claude_mpm-5.1.5.tar.gz"
  sha256 "410c37f5820b34c1c74bb94f1e34390724e8b3df5aa33432cdf1a61503d2801e"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
