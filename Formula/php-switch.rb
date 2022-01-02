class PhpSwitch < Formula
  desc "Switching between PHP versions is fun"
  homepage "https://github.com/nhedger/php-switch"
  url "https://github.com/nhedger/php-switch/archive/refs/tags/v1.0.tar.gz"
  sha256 "1e88fcdec6e69d96122d03e03393ad2ed8953ec2205eb7152ae7de601ea5545d"
  head "https://github.com/nhedger/php-switch.git", branch: "main"

  def install
    bin.install "php-switch-init.sh" => "php-switch-init"
    bin.install "php-switch.sh" => "php-switch"
  end

  def caveats; <<-CAVEATS
    Please add the following line to your ~/.zshrc file to initialize php-switch:

      source php-switch

  CAVEATS
  end
end
