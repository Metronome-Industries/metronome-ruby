# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::PricingUnitsTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @metronome.pricing_units.list

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::PricingUnitListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        is_currency: Metronome::BooleanModel | nil,
        name: String | nil
      }
    end
  end
end
