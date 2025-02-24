# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::Customers::InvoicesTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve_required_params
    response = @metronome.customers.invoices.retrieve(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      invoice_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
    )

    assert_pattern do
      response => Metronome::Models::Customers::InvoiceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::Customers::Invoice
      }
    end
  end

  def test_list_required_params
    response = @metronome.customers.invoices.list(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::Customers::Invoice
    end

    assert_pattern do
      row => {
        id: String,
        credit_type: Metronome::Models::CreditTypeData,
        customer_id: String,
        line_items: ^(Metronome::ArrayOf[Metronome::Models::Customers::Invoice::LineItem]),
        status: String,
        total: Float,
        type: String,
        amendment_id: String | nil,
        billable_status: Metronome::Models::Customers::Invoice::BillableStatus | nil,
        contract_custom_fields: ^(Metronome::HashOf[String]) | nil,
        contract_id: String | nil,
        correction_record: Metronome::Models::Customers::Invoice::CorrectionRecord | nil,
        created_at: Time | nil,
        custom_fields: ^(Metronome::HashOf[Metronome::Unknown]) | nil,
        customer_custom_fields: ^(Metronome::HashOf[String]) | nil,
        end_timestamp: Time | nil,
        external_invoice: Metronome::Models::Customers::Invoice::ExternalInvoice | nil,
        invoice_adjustments: ^(Metronome::ArrayOf[Metronome::Models::Customers::Invoice::InvoiceAdjustment]) | nil,
        issued_at: Time | nil,
        net_payment_terms_days: Float | nil,
        netsuite_sales_order_id: String | nil,
        plan_custom_fields: ^(Metronome::HashOf[String]) | nil,
        plan_id: String | nil,
        plan_name: String | nil,
        reseller_royalty: Metronome::Models::Customers::Invoice::ResellerRoyalty | nil,
        salesforce_opportunity_id: String | nil,
        start_timestamp: Time | nil,
        subtotal: Float | nil
      }
    end
  end

  def test_add_charge_required_params
    response = @metronome.customers.invoices.add_charge(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      charge_id: "5ae4b726-1ebe-439c-9190-9831760ba195",
      customer_plan_id: "a23b3cf4-47fb-4c3f-bb3d-9e64f7704015",
      description: "One time charge",
      invoice_start_timestamp: "2024-01-01T00:00:00Z",
      price: 250,
      quantity: 1
    )

    assert_pattern do
      response => Metronome::Models::Customers::InvoiceAddChargeResponse
    end

    assert_pattern do
      response => {
        **_
      }
    end
  end

  def test_list_breakdowns_required_params
    response = @metronome.customers.invoices.list_breakdowns(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      ending_before: "2019-12-27T18:11:19.117Z",
      starting_on: "2019-12-27T18:11:19.117Z"
    )

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::Customers::InvoiceListBreakdownsResponse
    end
  end
end
