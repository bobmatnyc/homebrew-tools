class GworkspaceMcp < Formula
  include Language::Python::Virtualenv

  desc "Google Workspace MCP Server - Connect Claude to Google Workspace APIs"
  homepage "https://github.com/masapasa/google-workspace-mcp"
  url "https://files.pythonhosted.org/packages/fe/91/91083a1ea90ac57f30eb456885ad98571aedbcf334ab4f4eee44d1af7afe/gworkspace_mcp-0.5.1.tar.gz"
  sha256 "da80fd3bd41c97a434f1d6b6ed0ce07f21daf7c7e5ecf02aef985986b1f5096c"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Create an isolated virtualenv
    system Formula["python@3.11"].opt_bin/"python3.11", "-m", "venv", libexec

    # Install the package and all its dependencies
    system libexec/"bin/pip", "install", "-v", buildpath

    # Create symlink for the binary
    bin.install_symlink libexec/"bin/gworkspace-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gworkspace-mcp --version")
    assert_match "Usage:", shell_output("#{bin}/gworkspace-mcp --help")
  end
end
