class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.6.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.6.0/configcat-cli_2.6.0_osx-x64.tar.gz"
    sha256 "5c4ac8c40c2318c32f55703a76c07525730959d766ecec9da653777c431fb4c2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.6.0/configcat-cli_2.6.0_osx-arm64.tar.gz"
    sha256 "342996f77f884ab82f922818b1da7af0f225de070e7aa126c56170aead0ef0e0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.6.0/configcat-cli_2.6.0_linux-x64.tar.gz"
    sha256 "38fc8afd34f560d85d88e247e489df5093cdb2a99906160d9e3ceffd0f78cea4"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.6.0", shell_output("#{bin}/configcat --version")
  end
end
