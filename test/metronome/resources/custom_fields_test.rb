# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::CustomFieldsTest < Minitest::Test
  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_add_key_required_params
    response = @metronome.custom_fields.add_key(
      enforce_uniqueness: true,
      entity: "alert",
      key: "x_account_id"
    )

    assert_pattern do
      response => nil
    end
  end

  def test_delete_values_required_params
    response = @metronome.custom_fields.delete_values(
      entity: "alert",
      entity_id: "99594816-e8a5-4bca-be21-8d1de0f45120",
      keys: ["x_account_id"]
    )

    assert_pattern do
      response => nil
    end
  end

  def test_list_keys
    response = @metronome.custom_fields.list_keys

    assert_pattern do
      response => Metronome::Models::CustomFieldListKeysResponse
    end
  end

  def test_remove_key_required_params
    response = @metronome.custom_fields.remove_key(entity: "alert", key: "x_account_id")

    assert_pattern do
      response => nil
    end
  end

  def test_set_values_required_params
    response = @metronome.custom_fields.set_values(
      custom_fields: {"x_account_id" => "KyVnHhSBWl7eY2bl"},
      entity: "alert",
      entity_id: "99594816-e8a5-4bca-be21-8d1de0f45120"
    )

    assert_pattern do
      response => nil
    end
  end
end
