# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::PaymentsTest < MetronomeSDK::Test::ResourceTest
  def test_list_required_params
    response =
      @metronome.v1.payments.list(
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        invoice_id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85"
      )

    assert_pattern do
      response => MetronomeSDK::Internal::BodyCursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::V1::Payment
    end

    assert_pattern do
      row => {
        id: String,
        amount: Float | nil,
        amount_paid: Float | nil,
        contract_id: String | nil,
        created_at: Time | nil,
        customer_id: String | nil,
        error_message: String | nil,
        fiat_credit_type: MetronomeSDK::CreditTypeData | nil,
        invoice_id: String | nil,
        payment_gateway: MetronomeSDK::V1::Payment::PaymentGateway | nil,
        status: MetronomeSDK::V1::PaymentStatus | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_attempt_required_params
    response =
      @metronome.v1.payments.attempt(
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        invoice_id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::PaymentAttemptResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::V1::Payment
      }
    end
  end

  def test_cancel_required_params
    response =
      @metronome.v1.payments.cancel(
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        invoice_id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::PaymentCancelResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::V1::Payment
      }
    end
  end
end
