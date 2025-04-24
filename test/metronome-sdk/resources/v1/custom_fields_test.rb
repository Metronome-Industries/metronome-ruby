# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::CustomFieldsTest < Minitest::Test
  def before_all
    @metronome = MetronomeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_add_key_required_params
    response = @metronome.v1.custom_fields.add_key(
      enforce_uniqueness: true,
      entity: :alert,
      key: "x_account_id"
    )

    assert_pattern do
      response => nil
    end
  end

  def test_delete_values_required_params
    response = @metronome.v1.custom_fields.delete_values(
      entity: :alert,
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
      response => MetronomeSDK::Models::V1::CustomFieldListKeysResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data]),
        next_page: String | nil
      }
    end
  end

  def test_remove_key_required_params
    response = @metronome.v1.custom_fields.remove_key(entity: :alert, key: "x_account_id")

    assert_pattern do
      response => nil
    end
  end

  def test_set_values_required_params
    response = @metronome.v1.custom_fields.set_values(
      custom_fields: {x_account_id: "KyVnHhSBWl7eY2bl"},
      entity: :alert,
      entity_id: "99594816-e8a5-4bca-be21-8d1de0f45120"
    )

    assert_pattern do
      response => nil
    end
  end
end
