# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::CreditGrantsTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.credit_grants.create(
      customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1",
      expires_at: "2022-04-01T00:00:00Z",
      grant_amount: {amount: 1000, credit_type_id: "5ae401dc-a648-4b49-9ac3-391bb5bc4d7b"},
      name: "Acme Corp Promotional Credit Grant",
      paid_amount: {amount: 5000, credit_type_id: "2714e483-4ff1-48e4-9e25-ac732e8f24f2"},
      priority: 0.5
    )

    assert_pattern do
      response => Metronome::Models::CreditGrantCreateResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::ID
      }
    end
  end

  def test_list
    response = @metronome.credit_grants.list

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::CreditGrantListResponse
    end

    assert_pattern do
      row => {
        id: String,
        balance: Metronome::Models::CreditGrantListResponse::Balance,
        custom_fields: ^(Metronome::HashOf[String]),
        customer_id: String,
        deductions: ^(Metronome::ArrayOf[Metronome::Models::CreditLedgerEntry]),
        effective_at: Time,
        expires_at: Time,
        grant_amount: Metronome::Models::CreditGrantListResponse::GrantAmount,
        name: String,
        paid_amount: Metronome::Models::CreditGrantListResponse::PaidAmount,
        pending_deductions: ^(Metronome::ArrayOf[Metronome::Models::CreditLedgerEntry]),
        priority: Float,
        credit_grant_type: String | nil,
        invoice_id: String | nil,
        products: ^(Metronome::ArrayOf[Metronome::Models::CreditGrantListResponse::Product]) | nil,
        reason: String | nil,
        uniqueness_key: String | nil
      }
    end
  end

  def test_edit_required_params
    response = @metronome.credit_grants.edit(id: "9b85c1c1-5238-4f2a-a409-61412905e1e1")

    assert_pattern do
      response => Metronome::Models::CreditGrantEditResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::ID
      }
    end
  end

  def test_list_entries
    response = @metronome.credit_grants.list_entries

    assert_pattern do
      response => Metronome::Models::CreditGrantListEntriesResponse
    end

    assert_pattern do
      response => {
        data: ^(Metronome::ArrayOf[Metronome::Models::CreditGrantListEntriesResponse::Data]),
        next_page: String | nil
      }
    end
  end

  def test_void_required_params
    response = @metronome.credit_grants.void(id: "9b85c1c1-5238-4f2a-a409-61412905e1e1")

    assert_pattern do
      response => Metronome::Models::CreditGrantVoidResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::ID
      }
    end
  end
end
