class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.3.3"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.3.3/configcat-cli_2.3.3_osx-x64.tar.gz"
    sha256 "1db165235f85be094df68debba42af842c43e09e3139f0e42ad7e0a9028c78cd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.3.3/configcat-cli_2.3.3_osx-arm64.tar.gz"
    sha256 "8b6480d0d6937cb8c54350aa400af1138202152b9ae56f0b76030e30d6140e8f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.3.3/configcat-cli_2.3.3_linux-x64.tar.gz"
    sha256 "e2207f6a427f4da0c81793e14d22a30cafdafd2b293132458e5516f4c83749d0"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.3.3", shell_output("#{bin}/configcat --version")
  end
end
