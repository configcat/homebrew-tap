class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.1.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.1.1/configcat-cli_2.1.1_osx-x64.tar.gz"
    sha256 "a0b68099be1dcac3afa1f4bf00c1af0b7fcdac50e5ebb92b4fef288289f18aa9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.1.1/configcat-cli_2.1.1_osx-arm64.tar.gz"
    sha256 "9145f9bdda7413b1da5a2ad94b7b73fc9ae5a736b334c10d520bcf78db18c1f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.1.1/configcat-cli_2.1.1_linux-x64.tar.gz"
    sha256 "6e352d818507eacd826aca03d34609a50daecee34ce96f8cfc78ea3c013de747"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.1.1", shell_output("#{bin}/configcat --version")
  end
end
