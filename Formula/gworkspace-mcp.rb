class GworkspaceMcp < Formula
  include Language::Python::Virtualenv

  desc "Google Workspace MCP Server - Connect Claude to Google Workspace APIs"
  homepage "https://github.com/masapasa/google-workspace-mcp"
  url "https://files.pythonhosted.org/packages/c3/97/0619e4b766b365e6227361fb079936c54d4d5f96c93936ee909c8b9ea451/gworkspace_mcp-0.1.28.tar.gz"
  sha256 "67931f31c342cead7e94cf59020790f94629fa2edbe70e70442d4d06bea88258"
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