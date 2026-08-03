class AgyUsage < Formula
  desc "Token usage reporting for Google Antigravity's agy CLI (a ccusage equivalent)"
  homepage "https://github.com/kaiba42/agy-usage"
  # Private repo: built from source over SSH (uses your existing git auth), so no
  # HOMEBREW_GITHUB_API_TOKEN is required. Prebuilt binaries are also attached to
  # each GitHub release for direct download.
  url "git@github.com:kaiba42/agy-usage.git",
      using:    :git,
      tag:      "v0.2.2",
      revision: "7a1aa9f6725d461ae0191063c993d8506d2cbbee"
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
