class GitflowAnalytics < Formula
  include Language::Python::Virtualenv

  desc "Analyze Git repositories for developer productivity insights"
  homepage "https://github.com/bobmatnyc/gitflow-analytics"
  url "https://files.pythonhosted.org/packages/source/g/gitflow-analytics/gitflow_analytics-3.13.22.tar.gz"
  sha256 "6f0afa37273c2259694b07ed652457663afb15b08bd723294392e388bd643807"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gfa --version")
    assert_match "Usage:", shell_output("#{bin}/gfa --help")
  end
end
