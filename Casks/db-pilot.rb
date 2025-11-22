cask "db-pilot" do
  version "1.4.16"
  # Calculated with shasum -a 256
  sha256 "f7998384d45b4a7bcedc5e463f176970a539967588b7277a57981e445efdff66"

  url "https://releases.dbpilot.io/DB%20Pilot_#{version}_aarch64.dmg"
  name "DB Pilot"
  desc "Database management tool"
  homepage "https://dbpilot.io"

  app "DB Pilot.app"

  # If you want to specify architecture
  depends_on arch: :arm64
end
