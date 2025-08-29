# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V2
      class Contracts
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V2::ContractRetrieveParams} for more details.
        #
        # Gets the details for a specific contract, including contract term, rate card
        # information, credits and commits, and more.
        #
        # ### Use this endpoint to:
        #
        # - Check the duration of a customer's current contract
        # - Get details on contract terms, including access schedule amounts for
        #   commitments and credits
        # - Understand the state of a contract at a past time. As you can evolve the terms
        #   of a contract over time through editing, use the `as_of_date` parameter to
        #   view the full contract configuration as of that point in time.
        #
        # ### Usage guidelines:
        #
        # - Optionally, use the `include_balance` and `include_ledger` fields to include
        #   balances and ledgers in the credit and commit responses. Using these fields
        #   will cause the query to be slower.
        #
        # @overload retrieve(contract_id:, customer_id:, as_of_date: nil, include_balance: nil, include_ledgers: nil, request_options: {})
        #
        # @param contract_id [String]
        #
        # @param customer_id [String]
        #
        # @param as_of_date [Time] Optional RFC 3339 timestamp. Return the contract as of this date. Cannot be used
        #
        # @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag ma
        #
        # @param include_ledgers [Boolean] Include commit/credit ledgers in the response. Setting this flag may cause the q
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractRetrieveResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractRetrieveParams
        def retrieve(params)
          parsed, options = MetronomeSDK::V2::ContractRetrieveParams.dump_request(params)
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
        # For a given customer, lists all of their contracts in chronological order.
        #
        # ### Use this endpoint to:
        #
        # - Check if a customer is provisioned with any contract, and at which tier
        # - Check the duration and terms of a customer's current contract
        # - Power a page in your end customer experience that shows the customer's history
        #   of tiers (e.g. this customer started out on the Pro Plan, then downgraded to
        #   the Starter plan).
        #
        # ### Usage guidelines:
        #
        # Use the `starting_at`, `covering_date`, and `include_archived` parameters to
        # filter the list of returned contracts. For example, to list only currently
        # active contracts, pass `covering_date` equal to the current time.
        #
        # @overload list(customer_id:, covering_date: nil, include_archived: nil, include_balance: nil, include_ledgers: nil, starting_at: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param covering_date [Time] Optional RFC 3339 timestamp. Only include contracts active on the provided date.
        #
        # @param include_archived [Boolean] Include archived contracts in the response.
        #
        # @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag ma
        #
        # @param include_ledgers [Boolean] Include commit/credit ledgers in the response. Setting this flag may cause the r
        #
        # @param starting_at [Time] Optional RFC 3339 timestamp. Only include contracts that started on or after thi
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractListResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractListParams
        def list(params)
          parsed, options = MetronomeSDK::V2::ContractListParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/contracts/list",
            body: parsed,
            model: MetronomeSDK::Models::V2::ContractListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V2::ContractEditParams} for more details.
        #
        # The ability to edit a contract helps you react quickly to the needs of your
        # customers and your business.
        #
        # ### Use this endpoint to:
        #
        # - Encode mid-term commitment and discount changes
        # - Fix configuration mistakes and easily roll back packaging changes
        #
        # ### Key response fields:
        #
        # - The `id` of the edit
        # - Complete edit details. For example, if you edited the contract to add new
        #   overrides and credits, you will receive the IDs of those overrides and credits
        #   in the response.
        #
        # ### Usage guidelines:
        #
        # - When you edit a contract, any draft invoices update immediately to reflect
        #   that edit. Finalized invoices remain unchanged - you must void and regenerate
        #   them in the UI or API to reflect the edit.
        # - Contract editing must be enabled to use this endpoint. Reach out to your
        #   Metronome representative to learn more.
        #
        # @overload edit(contract_id:, customer_id:, add_commits: nil, add_credits: nil, add_discounts: nil, add_overrides: nil, add_prepaid_balance_threshold_configuration: nil, add_professional_services: nil, add_recurring_commits: nil, add_recurring_credits: nil, add_reseller_royalties: nil, add_scheduled_charges: nil, add_spend_threshold_configuration: nil, add_subscriptions: nil, allow_contract_ending_before_finalized_invoice: nil, archive_commits: nil, archive_credits: nil, archive_scheduled_charges: nil, remove_overrides: nil, uniqueness_key: nil, update_commits: nil, update_contract_end_date: nil, update_contract_name: nil, update_credits: nil, update_prepaid_balance_threshold_configuration: nil, update_recurring_commits: nil, update_recurring_credits: nil, update_scheduled_charges: nil, update_spend_threshold_configuration: nil, update_subscriptions: nil, request_options: {})
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
        # @param add_prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2]
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
        # @param add_spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfigurationV2]
        #
        # @param add_subscriptions [Array<MetronomeSDK::Models::V2::ContractEditParams::AddSubscription>] Optional list of [subscriptions](https://docs.metronome.com/manage-product-acces
        #
        # @param allow_contract_ending_before_finalized_invoice [Boolean] If true, allows setting the contract end date earlier than the end_timestamp of
        #
        # @param archive_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit>] IDs of commits to archive
        #
        # @param archive_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit>] IDs of credits to archive
        #
        # @param archive_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge>] IDs of scheduled charges to archive
        #
        # @param remove_overrides [Array<MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride>] IDs of overrides to remove
        #
        # @param uniqueness_key [String] Optional uniqueness key to prevent duplicate contract edits.
        #
        # @param update_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit>]
        #
        # @param update_contract_end_date [Time, nil] RFC 3339 timestamp indicating when the contract will end (exclusive).
        #
        # @param update_contract_name [String, nil] Value to update the contract name to. If not provided, the contract name will re
        #
        # @param update_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit>]
        #
        # @param update_prepaid_balance_threshold_configuration [MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration]
        #
        # @param update_recurring_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCommit>] Edits to these recurring commits will only affect commits whose access schedules
        #
        # @param update_recurring_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCredit>] Edits to these recurring credits will only affect credits whose access schedules
        #
        # @param update_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge>]
        #
        # @param update_spend_threshold_configuration [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration]
        #
        # @param update_subscriptions [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateSubscription>] Optional list of subscriptions to update.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractEditResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractEditParams
        def edit(params)
          parsed, options = MetronomeSDK::V2::ContractEditParams.dump_request(params)
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
        # Edit specific details for a contract-level or customer-level commit. Use this
        # endpoint to modify individual commit access schedules, invoice schedules,
        # applicable products, invoicing contracts, or other fields.
        #
        # ### Usage guidelines:
        #
        # - As with all edits in Metronome, draft invoices will reflect the edit
        #   immediately, while finalized invoices are untouched unless voided and
        #   regenerated.
        # - If a commit's invoice schedule item is associated with a finalized invoice,
        #   you cannot remove or update the invoice schedule item.
        # - If a commit's invoice schedule item is associated with a voided invoice, you
        #   cannot remove the invoice schedule item.
        # - You cannot remove an commit access schedule segment that was applied to a
        #   finalized invoice. You can void the invoice beforehand and then remove the
        #   access schedule segment.
        #
        # @overload edit_commit(commit_id:, customer_id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, invoice_contract_id: nil, invoice_schedule: nil, priority: nil, product_id: nil, rate_type: nil, specifiers: nil, request_options: {})
        #
        # @param commit_id [String] ID of the commit to edit
        #
        # @param customer_id [String] ID of the customer whose commit is being edited
        #
        # @param access_schedule [MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule]
        #
        # @param applicable_product_ids [Array<String>, nil] Which products the commit applies to. If applicable_product_ids, applicable_prod
        #
        # @param applicable_product_tags [Array<String>, nil] Which tags the commit applies to. If applicable*product_ids, applicable_product*
        #
        # @param invoice_contract_id [String] ID of contract to use for invoicing
        #
        # @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule]
        #
        # @param priority [Float, nil] If multiple commits are applicable, the one with the lower priority will apply f
        #
        # @param product_id [String]
        #
        # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditCommitParams::RateType] If provided, updates the commit to use the specified rate type for current and f
        #
        # @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil] List of filters that determine what kind of customer usage draws down a commit o
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractEditCommitResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractEditCommitParams
        def edit_commit(params)
          parsed, options = MetronomeSDK::V2::ContractEditCommitParams.dump_request(params)
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
        # Edit details for a contract-level or customer-level credit.
        #
        # ### Use this endpoint to:
        #
        # - Extend the duration or the amount of an existing free credit like a trial
        # - Modify individual credit access schedules, applicable products, priority, or
        #   other fields.
        #
        # ### Usage guidelines:
        #
        # - As with all edits in Metronome, draft invoices will reflect the edit
        #   immediately, while finalized invoices are untouched unless voided and
        #   regenerated.
        # - You cannot remove an access schedule segment that was applied to a finalized
        #   invoice. You can void the invoice beforehand and then remove the access
        #   schedule segment.
        #
        # @overload edit_credit(credit_id:, customer_id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, priority: nil, product_id: nil, rate_type: nil, specifiers: nil, request_options: {})
        #
        # @param credit_id [String] ID of the credit to edit
        #
        # @param customer_id [String] ID of the customer whose credit is being edited
        #
        # @param access_schedule [MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule]
        #
        # @param applicable_product_ids [Array<String>, nil] Which products the credit applies to. If both applicable_product_ids and applica
        #
        # @param applicable_product_tags [Array<String>, nil] Which tags the credit applies to. If both applicable*product_ids and applicable*
        #
        # @param priority [Float, nil] If multiple commits are applicable, the one with the lower priority will apply f
        #
        # @param product_id [String]
        #
        # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditCreditParams::RateType] If provided, updates the credit to use the specified rate type for current and f
        #
        # @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil] List of filters that determine what kind of customer usage draws down a commit o
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::ContractEditCreditResponse]
        #
        # @see MetronomeSDK::Models::V2::ContractEditCreditParams
        def edit_credit(params)
          parsed, options = MetronomeSDK::V2::ContractEditCreditParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/contracts/credits/edit",
            body: parsed,
            model: MetronomeSDK::Models::V2::ContractEditCreditResponse,
            options: options
          )
        end

        # List all the edits made to a contract over time. In Metronome, you can edit a
        # contract at any point after it's created to fix mistakes or reflect changes in
        # terms. Metronome stores a full history of all edits that were ever made to a
        # contract, whether through the UI, `editContract` endpoint, or other endpoints
        # like `updateContractEndDate`.
        #
        # ### Use this endpoint to:
        #
        # - Understand what changes were made to a contract, when, and by who
        #
        # ### Key response fields:
        #
        # - An array of every edit ever made to the contract
        # - Details on each individual edit - for example showing that in one edit, a user
        #   added two discounts and incremented a subscription quantity.
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
          parsed, options = MetronomeSDK::V2::ContractGetEditHistoryParams.dump_request(params)
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
