# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::PricingUnitsTest < MetronomeSDK::Test::ResourceTest
  def test_list
    response = @metronome.v1.pricing_units.list

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::PricingUnitListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        is_currency: MetronomeSDK::Internal::Type::Boolean | nil,
        name: String | nil
      }
    end
  end
end
