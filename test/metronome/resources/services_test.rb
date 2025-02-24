# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::ServicesTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @metronome.services.list

    assert_pattern do
      response => Metronome::Models::ServiceListResponse
    end

    assert_pattern do
      response => {
        services: ^(Metronome::ArrayOf[Metronome::Models::ServiceListResponse::Service])
      }
    end
  end
end
