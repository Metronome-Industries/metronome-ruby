# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::CreditGrantsTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @metronome.v1.credit_grants.create(
        customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1",
        expires_at: "2022-04-01T00:00:00Z",
        grant_amount: {amount: 1000, credit_type_id: "5ae401dc-a648-4b49-9ac3-391bb5bc4d7b"},
        name: "Acme Corp Promotional Credit Grant",
        paid_amount: {amount: 5000, credit_type_id: "2714e483-4ff1-48e4-9e25-ac732e8f24f2"},
        priority: 0.5
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::CreditGrantCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end

  def test_list
    response = @metronome.v1.credit_grants.list

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::CreditGrantListResponse
    end

    assert_pattern do
      row => {
        id: String,
        balance: MetronomeSDK::Models::V1::CreditGrantListResponse::Balance,
        custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]),
        customer_id: String,
        deductions: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditLedgerEntry]),
        effective_at: Time,
        expires_at: Time,
        grant_amount: MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount,
        name: String,
        paid_amount: MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount,
        pending_deductions: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditLedgerEntry]),
        priority: Float,
        credit_grant_type: String | nil,
        invoice_id: String | nil,
        products: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditGrantListResponse::Product]) | nil,
        reason: String | nil,
        uniqueness_key: String | nil
      }
    end
  end

  def test_edit_required_params
    response = @metronome.v1.credit_grants.edit(id: "9b85c1c1-5238-4f2a-a409-61412905e1e1")

    assert_pattern do
      response => MetronomeSDK::Models::V1::CreditGrantEditResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end

  def test_list_entries
    response = @metronome.v1.credit_grants.list_entries

    assert_pattern do
      response => MetronomeSDK::Models::V1::CreditGrantListEntriesResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data]),
        next_page: String | nil
      }
    end
  end

  def test_void_required_params
    response = @metronome.v1.credit_grants.void(id: "9b85c1c1-5238-4f2a-a409-61412905e1e1")

    assert_pattern do
      response => MetronomeSDK::Models::V1::CreditGrantVoidResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end
end
