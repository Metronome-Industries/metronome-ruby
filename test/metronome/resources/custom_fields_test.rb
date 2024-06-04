# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::CustomFieldsTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_add_key_required_params
    response = @metronome.custom_fields.add_key({enforce_uniqueness: true, entity: "customer", key: "x_account_id"})
    assert_nil(response)
  end

  def test_delete_values_required_params
    response = @metronome.custom_fields.delete_values(
      {entity: "customer", entity_id: "99594816-e8a5-4bca-be21-8d1de0f45120", keys: ["x_account_id"]}
    )
    assert_nil(response)
  end

  def test_list_keys
    response = @metronome.custom_fields.list_keys 
    assert_kind_of(Metronome::Models::CustomFieldListKeysResponse, response)
  end

  def test_remove_key_required_params
    response = @metronome.custom_fields.remove_key({entity: "customer", key: "x_account_id"})
    assert_nil(response)
  end

  def test_set_values_required_params
    response = @metronome.custom_fields.set_values(
      {custom_fields: {"x_account_id" => "KyVnHhSBWl7eY2bl"}, entity: "customer", entity_id: "99594816-e8a5-4bca-be21-8d1de0f45120"}
    )
    assert_nil(response)
  end
end
