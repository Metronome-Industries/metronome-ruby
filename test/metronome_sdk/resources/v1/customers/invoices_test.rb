# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Customers::InvoicesTest < MetronomeSDK::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @metronome.v1.customers.invoices.retrieve(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        invoice_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::InvoiceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::V1::Customers::Invoice
      }
    end
  end

  def test_list_required_params
    response = @metronome.v1.customers.invoices.list(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::V1::Customers::Invoice
    end

    assert_pattern do
      row => {
        id: String,
        credit_type: MetronomeSDK::CreditTypeData,
        customer_id: String,
        line_items: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::Invoice::LineItem]),
        status: String,
        total: Float,
        type: String,
        amendment_id: String | nil,
        billable_status: MetronomeSDK::Internal::Type::Unknown | nil,
        constituent_invoices: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::Invoice::ConstituentInvoice]) | nil,
        contract_custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]) | nil,
        contract_id: String | nil,
        correction_record: MetronomeSDK::V1::Customers::Invoice::CorrectionRecord | nil,
        created_at: Time | nil,
        custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]) | nil,
        customer_custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]) | nil,
        end_timestamp: Time | nil,
        external_invoice: MetronomeSDK::V1::Customers::Invoice::ExternalInvoice | nil,
        invoice_adjustments: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::Invoice::InvoiceAdjustment]) | nil,
        issued_at: Time | nil,
        net_payment_terms_days: Float | nil,
        netsuite_sales_order_id: String | nil,
        payer: MetronomeSDK::V1::Customers::Invoice::Payer | nil,
        plan_custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]) | nil,
        plan_id: String | nil,
        plan_name: String | nil,
        reseller_royalty: MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty | nil,
        revenue_system_invoices: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::Invoice::RevenueSystemInvoice]) | nil,
        salesforce_opportunity_id: String | nil,
        start_timestamp: Time | nil,
        subtotal: Float | nil
      }
    end
  end

  def test_add_charge_required_params
    response =
      @metronome.v1.customers.invoices.add_charge(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        charge_id: "5ae4b726-1ebe-439c-9190-9831760ba195",
        customer_plan_id: "a23b3cf4-47fb-4c3f-bb3d-9e64f7704015",
        description: "One time charge",
        invoice_start_timestamp: "2024-01-01T00:00:00Z",
        price: 250,
        quantity: 1
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::InvoiceAddChargeResponse
    end

    assert_pattern do
      response => {
        **_
      }
    end
  end

  def test_list_breakdowns_required_params
    response =
      @metronome.v1.customers.invoices.list_breakdowns(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        ending_before: "2019-12-27T18:11:19.117Z",
        starting_on: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsResponse
    end
  end

  def test_retrieve_pdf_required_params
    skip("prism mocking library in JS SDK doesnt support application/pdf")

    response =
      @metronome.v1.customers.invoices.retrieve_pdf(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        invoice_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
      )

    assert_pattern do
      response => StringIO
    end
  end
end
