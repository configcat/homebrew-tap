class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.2.1"
  license "MIT"
  bottle :unneeded
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.2.1/configcat-cli_1.2.1_osx-x64.tar.gz"
    sha256 "428e079cbfc3b31e9edf113d5224178031c8558b71cb95116cf5f511b448e92c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.2.1/configcat-cli_1.2.1_linux-x64.tar.gz"
    sha256 "650ec14d445bfa4e691bf17e00ba68663189b3c89cbde2c2e115206d8eac4e96"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.2.1", shell_output("#{bin}/configcat --version")
  end
end