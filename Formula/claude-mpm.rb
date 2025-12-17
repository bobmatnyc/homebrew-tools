class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/26/29/f97981d909292eea657ab75674d4f1736c2980bba96e8b527815b9c83ec8/claude_mpm-5.4.6.tar.gz"
  sha256 "02462b0ca260a0de18fe96836fd7733546a9add592ac39c78a067a6e43016b06"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
