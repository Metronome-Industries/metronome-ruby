# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V2
      class Contracts
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V2::ContractRetrieveParams} for more details.
        #
        # Get a specific contract. New clients should use this endpoint rather than the v1
        # endpoint.
        #
        # @overload retrieve(contract_id:, customer_id:, as_of_date: nil, include_balance: nil, include_ledgers: nil, request_options: {})
        #
        # @param contract_id [String]
        #
        # @param customer_id [String]
        #
        # @param as_of_date [Time] Optional RFC 3339 timestamp. Return the contract as of this date. Cannot be used
        # ...
        #
        # @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag ma
        # ...
        #
        # @param include_ledgers [Boolean] Include commit/credit ledgers in the response. Setting this flag may cause the q
        # ...
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractRetrieveResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractRetrieveParams
        def retrieve(params)
          parsed, options = MetronomeSDK::Models::V2::ContractRetrieveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/contracts/get",
            body: parsed,
            model: MetronomeSDK::Models::V2::ContractRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V2::ContractListParams} for more details.
        #
        # List all contracts for a customer. New clients should use this endpoint rather
        # than the v1 endpoint.
        #
        # @overload list(customer_id:, covering_date: nil, include_archived: nil, include_balance: nil, include_ledgers: nil, starting_at: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param covering_date [Time] Optional RFC 3339 timestamp. Only include contracts active on the provided date.
        # ...
        #
        # @param include_archived [Boolean] Include archived contracts in the response.
        #
        # @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag ma
        # ...
        #
        # @param include_ledgers [Boolean] Include commit/credit ledgers in the response. Setting this flag may cause the r
        # ...
        #
        # @param starting_at [Time] Optional RFC 3339 timestamp. Only include contracts that started on or after thi
        # ...
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractListResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractListParams
        def list(params)
          parsed, options = MetronomeSDK::Models::V2::ContractListParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/contracts/list",
            body: parsed,
            model: MetronomeSDK::Models::V2::ContractListResponse,
            options: options
          )
        end

        # Edit a contract. Contract editing must be enabled to use this endpoint.
        #
        # @overload edit(contract_id:, customer_id:, add_commits: nil, add_credits: nil, add_discounts: nil, add_overrides: nil, add_professional_services: nil, add_recurring_commits: nil, add_recurring_credits: nil, add_reseller_royalties: nil, add_scheduled_charges: nil, add_spend_threshold_configuration: nil, archive_commits: nil, archive_credits: nil, archive_scheduled_charges: nil, remove_overrides: nil, update_commits: nil, update_credits: nil, update_scheduled_charges: nil, update_spend_threshold_configuration: nil, request_options: {})
        #
        # @param contract_id [String] ID of the contract being edited
        #
        # @param customer_id [String] ID of the customer whose contract is being edited
        #
        # @param add_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit>]
        #
        # @param add_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit>]
        #
        # @param add_discounts [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount>]
        #
        # @param add_overrides [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride>]
        #
        # @param add_professional_services [Array<MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService>] This field's availability is dependent on your client's configuration.
        #
        # @param add_recurring_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit>]
        #
        # @param add_recurring_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit>]
        #
        # @param add_reseller_royalties [Array<MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty>]
        #
        # @param add_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge>]
        #
        # @param add_spend_threshold_configuration [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration]
        #
        # @param archive_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit>] IDs of commits to archive
        #
        # @param archive_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit>] IDs of credits to archive
        #
        # @param archive_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge>] IDs of scheduled charges to archive
        #
        # @param remove_overrides [Array<MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride>] IDs of overrides to remove
        #
        # @param update_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit>]
        #
        # @param update_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit>]
        #
        # @param update_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge>]
        #
        # @param update_spend_threshold_configuration [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration]
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractEditResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractEditParams
        def edit(params)
          parsed, options = MetronomeSDK::Models::V2::ContractEditParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/contracts/edit",
            body: parsed,
            model: MetronomeSDK::Models::V2::ContractEditResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V2::ContractEditCommitParams} for more details.
        #
        # Edit a customer or contract commit. Contract commits can only be edited using
        # this endpoint if contract editing is enabled.
        #
        # @overload edit_commit(commit_id:, customer_id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, invoice_contract_id: nil, invoice_schedule: nil, product_id: nil, request_options: {})
        #
        # @param commit_id [String] ID of the commit to edit
        #
        # @param customer_id [String] ID of the customer whose commit is being edited
        #
        # @param access_schedule [MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule]
        #
        # @param applicable_product_ids [Array<String>, nil] Which products the commit applies to. If both applicable_product_ids and applica
        # ...
        #
        # @param applicable_product_tags [Array<String>, nil] Which tags the commit applies to. If both applicable*product_ids and applicable*
        # ...
        #
        # @param invoice_contract_id [String] ID of contract to use for invoicing
        #
        # @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule]
        #
        # @param product_id [String]
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractEditCommitResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractEditCommitParams
        def edit_commit(params)
          parsed, options = MetronomeSDK::Models::V2::ContractEditCommitParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/contracts/commits/edit",
            body: parsed,
            model: MetronomeSDK::Models::V2::ContractEditCommitResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V2::ContractEditCreditParams} for more details.
        #
        # Edit a customer or contract credit. Contract credits can only be edited using
        # this endpoint if contract editing is enabled.
        #
        # @overload edit_credit(credit_id:, customer_id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, product_id: nil, request_options: {})
        #
        # @param credit_id [String] ID of the credit to edit
        #
        # @param customer_id [String] ID of the customer whose credit is being edited
        #
        # @param access_schedule [MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule]
        #
        # @param applicable_product_ids [Array<String>, nil] Which products the credit applies to. If both applicable_product_ids and applica
        # ...
        #
        # @param applicable_product_tags [Array<String>, nil] Which tags the credit applies to. If both applicable*product_ids and applicable*
        # ...
        #
        # @param product_id [String]
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractEditCreditResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractEditCreditParams
        def edit_credit(params)
          parsed, options = MetronomeSDK::Models::V2::ContractEditCreditParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/contracts/credits/edit",
            body: parsed,
            model: MetronomeSDK::Models::V2::ContractEditCreditResponse,
            options: options
          )
        end

        # Get the edit history of a specific contract. Contract editing must be enabled to
        # use this endpoint.
        #
        # @overload get_edit_history(contract_id:, customer_id:, request_options: {})
        #
        # @param contract_id [String]
        # @param customer_id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractGetEditHistoryParams
        def get_edit_history(params)
          parsed, options = MetronomeSDK::Models::V2::ContractGetEditHistoryParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/contracts/getEditHistory",
            body: parsed,
            model: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
