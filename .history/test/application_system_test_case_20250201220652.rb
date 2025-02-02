require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400], options: {
    args: [
      "--no-sandbox",
      "--disable-dev-shm-usage",
      "--disable-gpu",
      "--window-size=1400,1400",
      "--user-data-dir=#{Dir.mktmpdir}" # Ensure unique user data directory
    ]
  }
end
