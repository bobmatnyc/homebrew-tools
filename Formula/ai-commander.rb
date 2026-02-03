class AiCommander < Formula
  desc "Multi-interface AI coding session manager - TUI, REPL, and Telegram"
  homepage "https://github.com/bobmatnyc/ai-commander"
  url "https://github.com/bobmatnyc/ai-commander/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "4163eb7c089c3d3483fc13db55e78e52e1dd30ae7c97b7f684a35e4cd2c4a9d0"
  license "MIT"
  head "https://github.com/bobmatnyc/ai-commander.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/ai-commander")

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
    assert_match "ai-commander", shell_output("#{bin}/ai-commander --version")
  end
end
