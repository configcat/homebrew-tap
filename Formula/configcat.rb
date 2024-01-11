class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.9.2"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.9.2/configcat-cli_1.9.2_osx-x64.tar.gz"
    sha256 "a15bd9c4f0c0c3b293c6ad0fe244b92a6a77527a46481f3e0d2b75535f432d45"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v1.9.2/configcat-cli_1.9.2_osx-arm64.tar.gz"
    sha256 "f29a9692cacb13a65796357c2fbdc84302b7e2208b3a228f2a735e97d4385722"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.9.2/configcat-cli_1.9.2_linux-x64.tar.gz"
    sha256 "c40e29a49a0a1fa16655c4d5021632fec707c7a470b5f2af35d96da56d1d9bd6"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.9.2", shell_output("#{bin}/configcat --version")
  end
end
