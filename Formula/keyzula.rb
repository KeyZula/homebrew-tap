class Keyzula < Formula
  desc "Password manager CLI with a built-in SSH agent"
  homepage "https://keyzula.com"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.2.1/keyzula-1.2.1-darwin-arm64.tar.gz"
      sha256 "2b281c3b19ffe6e3311c03a8dd532c9b0d509dd40a35e2e227ee1878722c1dda"
    end
    on_intel do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.2.1/keyzula-1.2.1-darwin-x64.tar.gz"
      sha256 "6e723ac7d23389ef4d52fa99916b9d0626877387a4e178086adb9d89961f537e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.2.1/keyzula-1.2.1-linux-arm64.tar.gz"
      sha256 "f4951f05bad5fe80852fc9713cb9be48ada5a1626ea1bd9750e72f51c3048dfb"
    end
    on_intel do
      url "https://github.com/KeyZula/homebrew-tap/releases/download/v1.2.1/keyzula-1.2.1-linux-x64.tar.gz"
      sha256 "b49344496b13c723ae4ef710319dfd41d4fc6a8f2a9cd26362840faf1e7bf7a8"
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
