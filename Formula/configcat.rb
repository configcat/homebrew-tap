class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "0.0.1"
  license "MIT"
  bottle :unneeded
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v0.0.1/configcat-cli_0.0.1_osx-x64.tar.gz"
    sha256 "4ccb9882b16d2ae07cc40b0b10e37378d728ba0dce3c54209996fddf5524190e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v0.0.1/configcat-cli_0.0.1_linux-x64.tar.gz"
    sha256 "4dda9ffe206d9a410d6fbcbf87fb1b642afffe5ad994841219861ed7f22d00fc"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "0.0.1", shell_output("#{bin}/configcat --version")
  end
end
