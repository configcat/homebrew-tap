class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.0.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.0.1/configcat-cli_2.0.1_osx-x64.tar.gz"
    sha256 "f0fc76649c744ef2635f9c4fc2445e4c76b4b4979d6bb4a6667349aaa35f1ae4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.0.1/configcat-cli_2.0.1_osx-arm64.tar.gz"
    sha256 "b49a6c7560860c2848998524f61ca79eadd801cfa82756ef219378580d04e53d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.0.1/configcat-cli_2.0.1_linux-x64.tar.gz"
    sha256 "c0ace148cf0c75e4255b075f63a70dffa35ff990ede840d60b09dd9371e5adfd"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.0.1", shell_output("#{bin}/configcat --version")
  end
end
