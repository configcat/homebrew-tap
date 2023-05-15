class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.8.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.8.0/configcat-cli_1.8.0_osx-x64.tar.gz"
    sha256 "4d6d6cbd7bc70e8a55ce1ffd257aae5b8f07f6830122020f50ec3ca6ac59abfb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v1.8.0/configcat-cli_1.8.0_osx-arm64.tar.gz"
    sha256 "fca90cd3e185fc9d1ae789c9da873abf58d940a91cc02da249b5dfcd6309c4a3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.8.0/configcat-cli_1.8.0_linux-x64.tar.gz"
    sha256 "c9201ce80d589324fc2cf863f2352de377651d039b6aa5e0c79909eeb9f05731"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.8.0", shell_output("#{bin}/configcat --version")
  end
end
