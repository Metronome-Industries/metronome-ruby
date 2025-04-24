# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V2
      class Contracts
        # Get a specific contract. New clients should use this endpoint rather than the v1
        #   endpoint.
        #
        # @param params [MetronomeSDK::Models::V2::ContractRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :contract_id
        #
        #   @option params [String] :customer_id
        #
        #   @option params [Time] :as_of_date Optional RFC 3339 timestamp. Return the contract as of this date. Cannot be used
        #     with include_ledgers parameter.
        #
        #   @option params [Boolean] :include_balance Include the balance of credits and commits in the response. Setting this flag
        #     may cause the query to be slower.
        #
        #   @option params [Boolean] :include_ledgers Include commit/credit ledgers in the response. Setting this flag may cause the
        #     query to be slower. Cannot be used with as_of_date parameter.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V2::ContractRetrieveResponse]
        #
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

        # List all contracts for a customer. New clients should use this endpoint rather
        #   than the v1 endpoint.
        #
        # @param params [MetronomeSDK::Models::V2::ContractListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id
        #
        #   @option params [Time] :covering_date Optional RFC 3339 timestamp. Only include contracts active on the provided date.
        #     This cannot be provided if starting_at filter is provided.
        #
        #   @option params [Boolean] :include_archived Include archived contracts in the response.
        #
        #   @option params [Boolean] :include_balance Include the balance of credits and commits in the response. Setting this flag
        #     may cause the response to be slower.
        #
        #   @option params [Boolean] :include_ledgers Include commit/credit ledgers in the response. Setting this flag may cause the
        #     response to be slower.
        #
        #   @option params [Time] :starting_at Optional RFC 3339 timestamp. Only include contracts that started on or after
        #     this date. This cannot be provided if covering_date filter is provided.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V2::ContractListResponse]
        #
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
        # @param params [MetronomeSDK::Models::V2::ContractEditParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :contract_id ID of the contract being edited
        #
        #   @option params [String] :customer_id ID of the customer whose contract is being edited
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit>] :add_commits
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit>] :add_credits
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount>] :add_discounts
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride>] :add_overrides
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService>] :add_professional_services This field's availability is dependent on your client's configuration.
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit>] :add_recurring_commits
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit>] :add_recurring_credits
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty>] :add_reseller_royalties
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge>] :add_scheduled_charges
        #
        #   @option params [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration] :add_spend_threshold_configuration
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit>] :archive_commits IDs of commits to archive
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit>] :archive_credits IDs of credits to archive
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge>] :archive_scheduled_charges IDs of scheduled charges to archive
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride>] :remove_overrides IDs of overrides to remove
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit>] :update_commits
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit>] :update_credits
        #
        #   @option params [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge>] :update_scheduled_charges
        #
        #   @option params [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration] :update_spend_threshold_configuration
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V2::ContractEditResponse]
        #
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

        # Edit a customer or contract commit. Contract commits can only be edited using
        #   this endpoint if contract editing is enabled.
        #
        # @param params [MetronomeSDK::Models::V2::ContractEditCommitParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :commit_id ID of the commit to edit
        #
        #   @option params [String] :customer_id ID of the customer whose commit is being edited
        #
        #   @option params [MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule] :access_schedule
        #
        #   @option params [Array<String>, nil] :applicable_product_ids Which products the commit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @option params [Array<String>, nil] :applicable_product_tags Which tags the commit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @option params [String] :invoice_contract_id ID of contract to use for invoicing
        #
        #   @option params [MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule] :invoice_schedule
        #
        #   @option params [String] :product_id
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V2::ContractEditCommitResponse]
        #
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

        # Edit a customer or contract credit. Contract credits can only be edited using
        #   this endpoint if contract editing is enabled.
        #
        # @param params [MetronomeSDK::Models::V2::ContractEditCreditParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :credit_id ID of the credit to edit
        #
        #   @option params [String] :customer_id ID of the customer whose credit is being edited
        #
        #   @option params [MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule] :access_schedule
        #
        #   @option params [Array<String>, nil] :applicable_product_ids Which products the credit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @option params [Array<String>, nil] :applicable_product_tags Which tags the credit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @option params [String] :product_id
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V2::ContractEditCreditResponse]
        #
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
        #   use this endpoint.
        #
        # @param params [MetronomeSDK::Models::V2::ContractGetEditHistoryParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :contract_id
        #
        #   @option params [String] :customer_id
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse]
        #
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

        # @param client [MetronomeSDK::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
