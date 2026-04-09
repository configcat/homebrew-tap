class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.6.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.6.1/configcat-cli_2.6.1_osx-x64.tar.gz"
    sha256 "4c2b037b4812cde67960c32b14c0b9ee749398cc08a26a83d5acc2753dc14d57"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.6.1/configcat-cli_2.6.1_osx-arm64.tar.gz"
    sha256 "1992aa9f73dcecd910d75d4018041686f2a89c3538e6aff69c34a316ac7ccde5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.6.1/configcat-cli_2.6.1_linux-x64.tar.gz"
    sha256 "91cd6d8ade9d7a63e6601acb4c2a36ebc337a022532770cde4829f590ac5c82f"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.6.1", shell_output("#{bin}/configcat --version")
  end
end
