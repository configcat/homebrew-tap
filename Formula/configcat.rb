class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.0.0/configcat-cli_2.0.0_osx-arm64.tar.gz"
    sha256 "8c1cf8ae826d717ff1ca71dfd34b06d999728b44975f07380333e24b039468ec"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.0.0/configcat-cli_2.0.0_osx-x64.tar.gz"
    sha256 "63ea0c4de744ab009d28ed0164a3d8fa6c8db3ad1b2c8983fc73a7f1eb3de606"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.0.0/configcat-cli_2.0.0_linux-x64.tar.gz"
    sha256 "3001d16f8b1ffdb047936dffd82427de63e1e0a89ed54ad7521f5f1f7d18ffbe"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.0.0", shell_output("#{bin}/configcat --version")
  end
end
