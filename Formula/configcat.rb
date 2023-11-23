class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.9.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.9.1/configcat-cli_1.9.1_osx-x64.tar.gz"
    sha256 "c359c3a8e3cf8e54bd46fead18dfa3933cc9a4bfdc0e46d19124074513ee3756"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v1.9.1/configcat-cli_1.9.1_osx-arm64.tar.gz"
    sha256 "4b8c26a0d854c022ff1bdd861408eb3742e7109de22ba30c2885540155629ad3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.9.1/configcat-cli_1.9.1_linux-x64.tar.gz"
    sha256 "1862f78774f37d9c4a61e39070c926eb1f1bf186bad247f11c50ed7e57c677f4"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.9.1", shell_output("#{bin}/configcat --version")
  end
end
