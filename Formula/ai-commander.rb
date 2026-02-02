class AiCommander < Formula
  desc "Multi-interface AI coding session manager - TUI, REPL, and Telegram"
  homepage "https://github.com/bobmatnyc/ai-commander"
  url "https://github.com/bobmatnyc/ai-commander/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "79e4ba1d55020fefe90e8509d5a3a5c42280f50b777699cfcd082ea8935e032a"
  license "MIT"
  head "https://github.com/bobmatnyc/ai-commander.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/commander-cli")
    
    # Also build the telegram bot binary
    system "cargo", "build", "--release", "-p", "commander-telegram"
    bin.install "target/release/commander-telegram"
  end

  def caveats
    <<~EOS
      To use the Telegram bot integration:
        1. Create a bot via @BotFather on Telegram
        2. Add to .env.local: TELEGRAM_BOT_TOKEN=your_token
        3. Run: commander tui
        4. Use /telegram to generate a pairing code

      For response summarization, add:
        OPENROUTER_API_KEY=your_key
    EOS
  end

  test do
    assert_match "commander", shell_output("#{bin}/commander --version")
  end
end
