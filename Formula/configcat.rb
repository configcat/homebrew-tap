class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.5.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.5.0/configcat-cli_1.5.0_osx-x64.tar.gz"
    sha256 "ab9a4c5e091eb6ff0793044b9a561d7d7cb27ba2e191f3faa6b7d9b2acdf7f46"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.5.0/configcat-cli_1.5.0_linux-x64.tar.gz"
    sha256 "21f5591f7a7a610e46b0f76ae002590ac48c6beeaf1985ec5f40f8284593cbcc"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.5.0", shell_output("#{bin}/configcat --version")
  end
end
