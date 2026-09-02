# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::PricingUnitsTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response = @metronome.v1.pricing_units.create(name: "AI Credits")

    assert_pattern do
      response => MetronomeSDK::Models::V1::PricingUnitCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end

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

  def test_archive_required_params
    response = @metronome.v1.pricing_units.archive(id: "fa2f1b3d-9d52-4951-a099-25991fd394d6")

    assert_pattern do
      response => MetronomeSDK::Models::V1::PricingUnitArchiveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end
end
