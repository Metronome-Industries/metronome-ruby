# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::InvoicesTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_retrieve
    response = @metronome.customers.invoices.retrieve(
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    )
    assert_kind_of(Metronome::Models::InvoiceRetrieveResponse, response)
  end

  def test_list
    response = @metronome.customers.invoices.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_add_charge_required_params
    response = @metronome.customers.invoices.add_charge(
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      {charge_id: "5ae4b726-1ebe-439c-9190-9831760ba195", customer_plan_id: "a23b3cf4-47fb-4c3f-bb3d-9e64f7704015", description: "One time charge", invoice_start_timestamp: "2024-01-01T00:00:00Z", price: 250, quantity: 1}
    )
    assert_kind_of(Metronome::Models::InvoiceAddChargeResponse, response)
  end
end
