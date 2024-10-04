# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::ServicesTest < Minitest::Test
  parallelize_me!

  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_list
    response = @metronome.services.list
    assert_kind_of(Metronome::Models::ServiceListResponse, response)
  end
end
