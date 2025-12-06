class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/41/86/37a25bd20b82a96f195ff6c7a61c9ac17ae922c426c47b0467f1a6bf416f/claude_mpm-5.1.2.tar.gz"
  sha256 "dcfadde452dddf4769ebad5de0c7797690713e0a7099a5a8102ba344611b3164"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
