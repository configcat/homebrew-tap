class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.9.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.9.0/configcat-cli_1.9.0_osx-x64.tar.gz"
    sha256 "d687a4cc06d6c604712780d8c6b78903b9ed17fc216da690f1e47fddd1f1b30e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v1.9.0/configcat-cli_1.9.0_osx-arm64.tar.gz"
    sha256 "4ca4603a95d07dc8af0055a1b0e823e857d8d7c04fa8a8be6d3064246fb5698e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.9.0/configcat-cli_1.9.0_linux-x64.tar.gz"
    sha256 "e9bf9cb8bc8ac88dbc31e41870754ed18e75fe7111cd27b502794556d17faac7"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.9.0", shell_output("#{bin}/configcat --version")
  end
end
