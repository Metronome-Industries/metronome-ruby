# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::CustomFieldsTest < MetronomeSDK::Test::ResourceTest
  def test_add_key_required_params
    response =
      @metronome.v1.custom_fields.add_key(enforce_uniqueness: true, entity: :customer, key: "x_account_id")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_values_required_params
    response =
      @metronome.v1.custom_fields.delete_values(
        entity: :customer,
        entity_id: "99594816-e8a5-4bca-be21-8d1de0f45120",
        keys: ["x_account_id"]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list_keys
    response = @metronome.v1.custom_fields.list_keys

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPageWithoutLimit
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::CustomFieldListKeysResponse
    end

    assert_pattern do
      row => {
        enforce_uniqueness: MetronomeSDK::Internal::Type::Boolean,
        entity: MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Entity,
        key: String
      }
    end
  end

  def test_remove_key_required_params
    response = @metronome.v1.custom_fields.remove_key(entity: :customer, key: "x_account_id")

    assert_pattern do
      response => nil
    end
  end

  def test_set_values_required_params
    response =
      @metronome.v1.custom_fields.set_values(
        custom_fields: {x_account_id: "KyVnHhSBWl7eY2bl"},
        entity: :customer,
        entity_id: "99594816-e8a5-4bca-be21-8d1de0f45120"
      )

    assert_pattern do
      response => nil
    end
  end
end
