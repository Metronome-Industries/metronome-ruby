# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::CreditGrantsTest < Minitest::Test
  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.credit_grants.create(
      customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1",
      expires_at: "2022-04-01T00:00:00Z",
      grant_amount: {"amount" => 1000, "credit_type_id" => "5ae401dc-a648-4b49-9ac3-391bb5bc4d7b"},
      name: "Acme Corp Promotional Credit Grant",
      paid_amount: {"amount" => 5000, "credit_type_id" => "2714e483-4ff1-48e4-9e25-ac732e8f24f2"},
      priority: 0.5
    )

    assert_pattern do
      response => Metronome::Models::CreditGrantCreateResponse
    end
  end

  def test_list
    response = @metronome.credit_grants.list

    assert_pattern do
      response => Metronome::CursorPage
    end
  end

  def test_edit_required_params
    response = @metronome.credit_grants.edit(id: "9b85c1c1-5238-4f2a-a409-61412905e1e1")

    assert_pattern do
      response => Metronome::Models::CreditGrantEditResponse
    end
  end

  def test_list_credit_types
    response = @metronome.credit_grants.list_credit_types

    assert_pattern do
      response => Metronome::CursorPage
    end
  end

  def test_list_entries
    response = @metronome.credit_grants.list_entries

    assert_pattern do
      response => Metronome::Models::CreditGrantListEntriesResponse
    end
  end

  def test_void_required_params
    response = @metronome.credit_grants.void(id: "9b85c1c1-5238-4f2a-a409-61412905e1e1")

    assert_pattern do
      response => Metronome::Models::CreditGrantVoidResponse
    end
  end
end
