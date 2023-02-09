class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.7.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.7.1/configcat-cli_1.7.1_osx-x64.tar.gz"
    sha256 "dbe5cc593fcfb7a31f7419bc29bfe4cb3f45d0c97706b907aedf3030fb1dbe31"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v1.7.1/configcat-cli_1.7.1_osx-arm64.tar.gz"
    sha256 "6d211c46e3f6d6bb35eb30d4564e1263d73986fa39ad91af160718030270a51b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.7.1/configcat-cli_1.7.1_linux-x64.tar.gz"
    sha256 "80c1cee3d6196c3703ce072886bd5fbe8f2bb9f7fde3c241ce9389d2f9bb6293"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.7.1", shell_output("#{bin}/configcat --version")
  end
end
