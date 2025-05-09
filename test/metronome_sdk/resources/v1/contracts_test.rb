# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::ContractsTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @metronome.v1.contracts.create(
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        starting_at: "2020-01-01T00:00:00.000Z"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::ContractCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end

  def test_retrieve_required_params
    response =
      @metronome.v1.contracts.retrieve(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::ContractRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::ContractRetrieveResponse::Data
      }
    end
  end

  def test_list_required_params
    response = @metronome.v1.contracts.list(customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1")

    assert_pattern do
      response => MetronomeSDK::Models::V1::ContractListResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data])
      }
    end
  end

  def test_add_manual_balance_entry_required_params
    response =
      @metronome.v1.contracts.add_manual_balance_entry(
        id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85",
        amount: -1000,
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        reason: "Reason for entry",
        segment_id: "66368e29-3f97-4d15-a6e9-120897f0070a"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_amend_required_params
    response =
      @metronome.v1.contracts.amend(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        starting_at: "2020-01-01T00:00:00.000Z"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::ContractAmendResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end

  def test_archive_required_params
    response =
      @metronome.v1.contracts.archive(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        void_invoices: true
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::ContractArchiveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end

  def test_create_historical_invoices_required_params
    response =
      @metronome.v1.contracts.create_historical_invoices(
        invoices: [
          {
            contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
            credit_type_id: "2714e483-4ff1-48e4-9e25-ac732e8f24f2",
            customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
            exclusive_end_date: "2020-02-01T00:00:00.000Z",
            inclusive_start_date: "2020-01-01T00:00:00.000Z",
            issue_date: "2020-02-01T00:00:00.000Z",
            usage_line_items: [
              {
                exclusive_end_date: "2020-02-01T00:00:00.000Z",
                inclusive_start_date: "2020-01-01T00:00:00.000Z",
                product_id: "f14d6729-6a44-4b13-9908-9387f1918790"
              }
            ]
          }
        ],
        preview: false
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::Invoice])
      }
    end
  end

  def test_list_balances_required_params
    response = @metronome.v1.contracts.list_balances(customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d")

    assert_pattern do
      response => MetronomeSDK::Models::V1::ContractListBalancesResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListBalancesResponse::Data]),
        next_page: String | nil
      }
    end
  end

  def test_retrieve_rate_schedule_required_params
    response =
      @metronome.v1.contracts.retrieve_rate_schedule(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse::Data]),
        next_page: String | nil
      }
    end
  end

  def test_schedule_pro_services_invoice_required_params
    response =
      @metronome.v1.contracts.schedule_pro_services_invoice(
        contract_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        customer_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        issued_at: "2019-12-27T18:11:19.117Z",
        line_items: [{professional_service_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"}]
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::Invoice])
      }
    end
  end

  def test_set_usage_filter_required_params
    response =
      @metronome.v1.contracts.set_usage_filter(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        group_key: "business_subscription_id",
        group_values: %w[ID-1 ID-2],
        starting_at: "2020-01-01T00:00:00.000Z"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_update_end_date_required_params
    response =
      @metronome.v1.contracts.update_end_date(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::ContractUpdateEndDateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end
end
