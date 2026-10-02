class Keyzula < Formula
  desc "Password manager CLI with a built-in SSH agent"
  homepage "https://keyzula.com"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.1.1/keyzula-1.1.1-darwin-arm64.tar.gz"
      sha256 "153770e36ae3e698bd42515a22973e26cdc39e1959bbdd56efe0369d81c3f2ca"
    end
    on_intel do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.1.1/keyzula-1.1.1-darwin-x64.tar.gz"
      sha256 "ad153ef403f741f3459725d09e8200d39474fe4a2af2986f592ee9a9f7df4bb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.1.1/keyzula-1.1.1-linux-arm64.tar.gz"
      sha256 "588f9f02ee4c40e2b9711b0c05f24faa2e138228309568052f91fa67091357d9"
    end
    on_intel do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.1.1/keyzula-1.1.1-linux-x64.tar.gz"
      sha256 "706b7ba4d8bb4c612bae5322b5a41404e48fce113eac3a881745912e2f5f066a"
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
