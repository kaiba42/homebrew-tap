class AgyUsage < Formula
  desc "Token usage reporting for Google Antigravity's agy CLI (a ccusage equivalent)"
  homepage "https://github.com/kaiba42/agy-usage"
  # Private repo: built from source over SSH (uses your existing git auth), so no
  # HOMEBREW_GITHUB_API_TOKEN is required. Prebuilt binaries are also attached to
  # each GitHub release for direct download.
  url "git@github.com:kaiba42/agy-usage.git",
      using:    :git,
      tag:      "v0.1.0",
      revision: "213779fcca339bf8097237ecb7c17d97d6533a20"
  license "MIT"
  head "git@github.com:kaiba42/agy-usage.git", using: :git, branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "agy-usage", shell_output("#{bin}/agy-usage --help 2>&1")
  end
end
