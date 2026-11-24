class Jnbox < Formula
  desc "jnbox CLI for the Jinnangxia automation platform"
  homepage "https://liangyouyiji.com/help/jnbox-install"
  version "5.3.0"

  on_macos do
    on_arm do
      url "https://github.com/liangyouyiji-dev/jnbox/releases/download/v5.3.0/jnbox_5.3.0_darwin_arm64.tar.gz"
      sha256 "d65dda95fec2ce6a53f2eb7988bfe6a29bcc952a77ce6babfc2f9d9b5ec4ee59"
    end

    on_intel do
      url "https://github.com/liangyouyiji-dev/jnbox/releases/download/v5.3.0/jnbox_5.3.0_darwin_amd64.tar.gz"
      sha256 "b4f8b5d6215a4ce238c0566b5e3e2bf435454e1f2b48ca09e6062451b6e00aeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/liangyouyiji-dev/jnbox/releases/download/v5.3.0/jnbox_5.3.0_linux_arm64.tar.gz"
      sha256 "aefc8180fbaa22e6752b1858137d29ec7a4a0bdd54abe26108819cf1445c9d02"
    end

    on_intel do
      url "https://github.com/liangyouyiji-dev/jnbox/releases/download/v5.3.0/jnbox_5.3.0_linux_amd64.tar.gz"
      sha256 "4d7608c5bfeba8dc3e1ef61a7b0585e5b22d5726b39bcf6f5243351118a26f6c"
    end
  end

  def install
    libexec.install "jnbox"
    (libexec/".jnbox-install-channel").write "homebrew\n"
    bin.install_symlink libexec/"jnbox"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/jnbox version --short --format raw").strip
  end
end
