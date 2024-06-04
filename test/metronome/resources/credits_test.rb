# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::CreditsTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_create_grant_required_params
    response = @metronome.credits.create_grant(
      {customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1", expires_at: "2022-04-01T00:00:00Z", grant_amount: {"amount" => 1000, "credit_type_id" => "5ae401dc-a648-4b49-9ac3-391bb5bc4d7b"}, name: "Acme Corp Promotional Credit Grant", paid_amount: {"amount" => 5000, "credit_type_id" => "2714e483-4ff1-48e4-9e25-ac732e8f24f2"}, priority: 0.5}
    )
    assert_kind_of(Metronome::Models::CreditCreateGrantResponse, response)
  end

  def test_edit_grant_required_params
    response = @metronome.credits.edit_grant({id: "9b85c1c1-5238-4f2a-a409-61412905e1e1"})
    assert_kind_of(Metronome::Models::CreditEditGrantResponse, response)
  end

  def test_list_entries
    response = @metronome.credits.list_entries 
    assert_kind_of(Metronome::Models::CreditListEntriesResponse, response)
  end

  def test_list_grants
    response = @metronome.credits.list_grants 
    assert_kind_of(Metronome::Models::CreditListGrantsResponse, response)
  end

  def test_void_grant_required_params
    response = @metronome.credits.void_grant({id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"})
    assert_kind_of(Metronome::Models::CreditVoidGrantResponse, response)
  end
end
