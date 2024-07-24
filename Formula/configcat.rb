class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.3.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.3.0/configcat-cli_2.3.0_osx-x64.tar.gz"
    sha256 "50ad520a5713e8f3208e6e1ebb49d346e4e942e53e1b170285f517541e4e368e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.3.0/configcat-cli_2.3.0_osx-arm64.tar.gz"
    sha256 "b4f5997764ef4f33a307081af9746e7edfa6e1399476ebabedaa194161ba9dd1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.3.0/configcat-cli_2.3.0_linux-x64.tar.gz"
    sha256 "574f643b74e35c4fb7d1d8081533bff9f47b58a91d6c911a0d06b2901770b66a"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.3.0", shell_output("#{bin}/configcat --version")
  end
end
