# frozen_string_literal: true

require_relative "../test_helper"

class MetronomeSDK::Test::Resources::V2Test < Minitest::Test
  def before_all
    @metronome = MetronomeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end
end
