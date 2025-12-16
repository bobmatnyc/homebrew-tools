class ClaudeMpm < Formula
  include Language::Python::Virtualenv

  desc "Claude Multi-Agent Project Manager - Subprocess orchestration layer"
  homepage "https://github.com/bobmatnyc/claude-mpm"
  url "https://files.pythonhosted.org/packages/90/cd/b043a39a8d68faf6aef89e43ebd790225f97e1e0fe558ff9262f25059a5e/claude_mpm-5.4.3.tar.gz"
  sha256 "cb9ad0b54fb1a62eeeed6b488bbacb42e4eb78cda05bcded6ccd7dc674db8a36"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-mpm --version")
  end
end
