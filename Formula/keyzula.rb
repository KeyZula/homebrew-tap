class Keyzula < Formula
  desc "Password manager CLI with a built-in SSH agent"
  homepage "https://keyzula.com"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.2.0/keyzula-1.2.0-darwin-arm64.tar.gz"
      sha256 "ee0a3b6a6f73f92998c64b6f1b12aa193e8453317f0524064b9d371a9e6eacab"
    end
    on_intel do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.2.0/keyzula-1.2.0-darwin-x64.tar.gz"
      sha256 "7c880af5415b26345da64791b22090430ab9564c243d959e10814aae5cf8cc66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.2.0/keyzula-1.2.0-linux-arm64.tar.gz"
      sha256 "fe37ce77c3f2d79627a3593f9e9b875c6741f59c4cd471e397806eba5120f044"
    end
    on_intel do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.2.0/keyzula-1.2.0-linux-x64.tar.gz"
      sha256 "22732265b7e7c8acc84343d872b6b82a03361d831984e5800f957f916c10181a"
    end
  end

  def install
    bin.install "keyzula"
  end

  def caveats
    <<~EOS
      Log in, then start the SSH agent in the background:
        keyzula login you@example.com
        keyzula ssh-agent --daemon

      To let ssh/git use it, set SSH_AUTH_SOCK (or IdentityAgent in ~/.ssh/config).
      Print the snippet for your system with:
        keyzula ssh add-config
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyzula --version")
  end
end
