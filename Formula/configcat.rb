class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.2.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.2.0/configcat-cli_2.2.0_osx-x64.tar.gz"
    sha256 "4dfdae9be0b6d0555827f720b6bce26b05f890a91901d5211211a2686bb28121"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.2.0/configcat-cli_2.2.0_osx-arm64.tar.gz"
    sha256 "2c12a15b4f824d11589fa4f1c6ffa9916adaf8ba1c820bf1af2cfa83d15decd7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.2.0/configcat-cli_2.2.0_linux-x64.tar.gz"
    sha256 "65715e7b201a124ebd2e9ab3dcee0b1bcde1517615b023905bff68149beda6a7"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.2.0", shell_output("#{bin}/configcat --version")
  end
end
