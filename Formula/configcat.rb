class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.6.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.6.0/configcat-cli_1.6.0_osx-x64.tar.gz"
    sha256 "932ecd1cdf29521e8d7fd3758950289fd6646e4bee89c37ef8008ec98abdb673"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v1.6.0/configcat-cli_1.6.0_osx-arm64.tar.gz"
    sha256 "9c8275f19f559ed55c2016d753b5a9c1b105ca5c14cdc8507f2933a7098d731e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.6.0/configcat-cli_1.6.0_linux-x64.tar.gz"
    sha256 "2291b58076295541b54e62e0a6d0efa050f579d794cf9b0857ac9f758632dd75"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.6.0", shell_output("#{bin}/configcat --version")
  end
end
