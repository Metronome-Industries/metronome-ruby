# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V2::ContractsTest < MetronomeSDK::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @metronome.v2.contracts.retrieve(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data
      }
    end
  end

  def test_list_required_params
    response = @metronome.v2.contracts.list(customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d")

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractListResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data])
      }
    end
  end

  def test_edit_required_params
    response =
      @metronome.v2.contracts.edit(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractEditResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V2::ContractEditResponse::Data
      }
    end
  end

  def test_edit_commit_required_params
    response =
      @metronome.v2.contracts.edit_commit(
        commit_id: "5e7e82cf-ccb7-428c-a96f-a8e4f67af822",
        customer_id: "4c91c473-fc12-445a-9c38-40421d47023f"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractEditCommitResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V2::ContractEditCommitResponse::Data
      }
    end
  end

  def test_edit_credit_required_params
    response =
      @metronome.v2.contracts.edit_credit(
        credit_id: "5e7e82cf-ccb7-428c-a96f-a8e4f67af822",
        customer_id: "4c91c473-fc12-445a-9c38-40421d47023f"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractEditCreditResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V2::ContractEditCreditResponse::Data
      }
    end
  end

  def test_get_edit_history_required_params
    response =
      @metronome.v2.contracts.get_edit_history(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractGetEditHistoryResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data])
      }
    end
  end
end
