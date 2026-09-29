class Keyzula < Formula
  desc "Password manager CLI with a built-in SSH agent"
  homepage "https://keyzula.com"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.1.0/keyzula-1.1.0-darwin-arm64.tar.gz"
      sha256 "a383b3d2b76e5d3009b63d732cde6c66410062547a6150da15c30be9e9c4e566"
    end
    on_intel do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.1.0/keyzula-1.1.0-darwin-x64.tar.gz"
      sha256 "f53b36af6b91fca1a30d154fa5e6f6f93eec004ca2eea412846649560a4d9370"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.1.0/keyzula-1.1.0-linux-arm64.tar.gz"
      sha256 "5252d751772cd32052b1fc7271244255821dd5437a1c15b63a8ad4cc7eab1b12"
    end
    on_intel do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.1.0/keyzula-1.1.0-linux-x64.tar.gz"
      sha256 "87b6cc546ce4ef02ea218e47713cba17312c03fd132bbe27cde92ca2730083a9"
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
