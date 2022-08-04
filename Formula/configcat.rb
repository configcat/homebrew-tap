class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.5.2"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.5.2/configcat-cli_1.5.2_osx-x64.tar.gz"
    sha256 "8708f6a3b98959b5b65b564ff44d9c59e6e9ae9014985fa30c66f4a2f34735a7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.5.2/configcat-cli_1.5.2_linux-x64.tar.gz"
    sha256 "c6c7aa8ef656b0fc1464a7e349fc131eb3023e438740f27b9cc91cb0ac35743f"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.5.2", shell_output("#{bin}/configcat --version")
  end
end
