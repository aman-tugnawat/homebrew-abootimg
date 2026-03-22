class Abootimg < Formula
  desc "Tool to read/write/update android boot images"
  homepage "https://github.com/ggrandou/abootimg"
  url "https://github.com/ggrandou/abootimg/archive/7e127fee6a3981f6b0a50ce9910267cd501e09d4.tar.gz"
  version "0.8.1"
  sha256 "eb8d912bc7b5454c2afd3385fd86f4917d3587c48a6f5ae45df7856d88502cab"
  license "GPL-2.0-or-later"

  def install
    system "make", "CPPFLAGS=", "LDLIBS="
    bin.install "abootimg"
    bin.install "abootimg-pack-initrd"
    bin.install "abootimg-unpack-initrd"
  end

  test do
    system "#{bin}/abootimg", "-h"
  end
end
