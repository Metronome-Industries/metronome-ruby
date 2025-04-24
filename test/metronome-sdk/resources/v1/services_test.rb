# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::ServicesTest < Minitest::Test
  def before_all
    @metronome = MetronomeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @metronome.v1.services.list

    assert_pattern do
      response => MetronomeSDK::Models::V1::ServiceListResponse
    end

    assert_pattern do
      response => {
        services: ^(MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ServiceListResponse::Service])
      }
    end
  end
end
