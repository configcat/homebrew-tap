class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.3.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.3.1/configcat-cli_2.3.1_osx-x64.tar.gz"
    sha256 "eb586830fca5ebc6fb575e4776fd6ce0ff6af2cd50a924732d0dda9192bfe0f2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.3.1/configcat-cli_2.3.1_osx-arm64.tar.gz"
    sha256 "b88830b81648d603c33cf4820d68cd5027485e0ec9b7c13546a2bafe3c3bf7b8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.3.1/configcat-cli_2.3.1_linux-x64.tar.gz"
    sha256 "3926cea7a5f36848e34b59af8543ae56312454edb2a8050f22292c78e3ab1e68"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.3.1", shell_output("#{bin}/configcat --version")
  end
end
