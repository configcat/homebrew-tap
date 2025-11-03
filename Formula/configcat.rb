class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.5.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.5.0/configcat-cli_2.5.0_osx-x64.tar.gz"
    sha256 "295f036521e41d6e29781e37a1054c547558cdf2e6c3b34ae126ca63e6f40dfe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.5.0/configcat-cli_2.5.0_osx-arm64.tar.gz"
    sha256 "cafd3b04f4891330bdd02e71ef8984fb37416905d58eae5dad3cc978374a3c2b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.5.0/configcat-cli_2.5.0_linux-x64.tar.gz"
    sha256 "da5d237097e0dae80f67a3e589fd12c737773d8eefac82cfe8d4426342d89253"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.5.0", shell_output("#{bin}/configcat --version")
  end
end
