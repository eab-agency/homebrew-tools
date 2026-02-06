class DevSecuritySetup < Formula
  desc "One-command secret detection pipeline for Git projects"
  homepage "https://github.com/eab-agency/dev-security-setup"
  url "https://github.com/eab-agency/dev-security-setup/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "d2656a27e67143819bce43a3599928dc8b6651c25ec7526774cb64d5f96388f6"
  license :cannot_represent

  depends_on "pre-commit"
  depends_on "trufflehog"

  def install
    bin.install "setup-security.sh" => "setup-security"
  end

  test do
    system bin/"setup-security", "--version"
  end
end

