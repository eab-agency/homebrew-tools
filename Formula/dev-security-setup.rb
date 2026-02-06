class DevSecuritySetup < Formula
  desc "One-command secret detection pipeline for Git projects"
  homepage "https://github.com/eab-agency/dev-security-setup"
  url "https://github.com/eab-agency/dev-security-setup/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
