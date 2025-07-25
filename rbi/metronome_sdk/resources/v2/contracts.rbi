# typed: strong

module MetronomeSDK
  module Resources
    class V2
      class Contracts
        # Get a specific contract. New clients should use this endpoint rather than the v1
        # endpoint.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            as_of_date: Time,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V2::ContractRetrieveResponse)
        end
        def retrieve(
          contract_id:,
          customer_id:,
          # Optional RFC 3339 timestamp. Return the contract as of this date. Cannot be used
          # with include_ledgers parameter.
          as_of_date: nil,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the query to be slower.
          include_balance: nil,
          # Include commit/credit ledgers in the response. Setting this flag may cause the
          # query to be slower. Cannot be used with as_of_date parameter.
          include_ledgers: nil,
          request_options: {}
        )
        end

        # List all contracts for a customer in chronological order. New clients should use
        # this endpoint rather than the v1 endpoint.
        sig do
          params(
            customer_id: String,
            covering_date: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            starting_at: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V2::ContractListResponse)
        end
        def list(
          customer_id:,
          # Optional RFC 3339 timestamp. Only include contracts active on the provided date.
          # This cannot be provided if starting_at filter is provided.
          covering_date: nil,
          # Include archived contracts in the response.
          include_archived: nil,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the response to be slower.
          include_balance: nil,
          # Include commit/credit ledgers in the response. Setting this flag may cause the
          # response to be slower.
          include_ledgers: nil,
          # Optional RFC 3339 timestamp. Only include contracts that started on or after
          # this date. This cannot be provided if covering_date filter is provided.
          starting_at: nil,
          request_options: {}
        )
        end

        # Edit a contract. Contract editing must be enabled to use this endpoint.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            add_commits:
              T::Array[MetronomeSDK::V2::ContractEditParams::AddCommit::OrHash],
            add_credits:
              T::Array[MetronomeSDK::V2::ContractEditParams::AddCredit::OrHash],
            add_discounts:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddDiscount::OrHash
              ],
            add_overrides:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddOverride::OrHash
              ],
            add_prepaid_balance_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::OrHash,
            add_professional_services:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddProfessionalService::OrHash
              ],
            add_recurring_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::OrHash
              ],
            add_recurring_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::OrHash
              ],
            add_reseller_royalties:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::OrHash
              ],
            add_scheduled_charges:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::OrHash
              ],
            add_spend_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::OrHash,
            add_subscriptions:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::AddSubscription::OrHash
              ],
            allow_contract_ending_before_finalized_invoice: T::Boolean,
            archive_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::ArchiveCommit::OrHash
              ],
            archive_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::ArchiveCredit::OrHash
              ],
            archive_scheduled_charges:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::ArchiveScheduledCharge::OrHash
              ],
            remove_overrides:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::RemoveOverride::OrHash
              ],
            update_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateCommit::OrHash
              ],
            update_contract_end_date: T.nilable(Time),
            update_contract_name: T.nilable(String),
            update_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateCredit::OrHash
              ],
            update_prepaid_balance_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::OrHash,
            update_recurring_commits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::OrHash
              ],
            update_recurring_credits:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit::OrHash
              ],
            update_scheduled_charges:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::OrHash
              ],
            update_spend_threshold_configuration:
              MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::OrHash,
            update_subscriptions:
              T::Array[
                MetronomeSDK::V2::ContractEditParams::UpdateSubscription::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V2::ContractEditResponse)
        end
        def edit(
          # ID of the contract being edited
          contract_id:,
          # ID of the customer whose contract is being edited
          customer_id:,
          add_commits: nil,
          add_credits: nil,
          add_discounts: nil,
          add_overrides: nil,
          add_prepaid_balance_threshold_configuration: nil,
          # This field's availability is dependent on your client's configuration.
          add_professional_services: nil,
          add_recurring_commits: nil,
          add_recurring_credits: nil,
          add_reseller_royalties: nil,
          add_scheduled_charges: nil,
          add_spend_threshold_configuration: nil,
          # Optional list of
          # [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/)
          # to add to the contract.
          add_subscriptions: nil,
          # If true, allows setting the contract end date earlier than the end_timestamp of
          # existing finalized invoices. Finalized invoices will be unchanged; if you want
          # to incorporate the new end date, you can void and regenerate finalized usage
          # invoices. Defaults to true.
          allow_contract_ending_before_finalized_invoice: nil,
          # IDs of commits to archive
          archive_commits: nil,
          # IDs of credits to archive
          archive_credits: nil,
          # IDs of scheduled charges to archive
          archive_scheduled_charges: nil,
          # IDs of overrides to remove
          remove_overrides: nil,
          update_commits: nil,
          # RFC 3339 timestamp indicating when the contract will end (exclusive).
          update_contract_end_date: nil,
          # Value to update the contract name to. If not provided, the contract name will
          # remain unchanged.
          update_contract_name: nil,
          update_credits: nil,
          update_prepaid_balance_threshold_configuration: nil,
          # Edits to these recurring commits will only affect commits whose access schedules
          # has not started. Expired commits, and commits with an active access schedule
          # will remain unchanged.
          update_recurring_commits: nil,
          # Edits to these recurring credits will only affect credits whose access schedules
          # has not started. Expired credits, and credits with an active access schedule
          # will remain unchanged.
          update_recurring_credits: nil,
          update_scheduled_charges: nil,
          update_spend_threshold_configuration: nil,
          # Optional list of subscriptions to update.
          update_subscriptions: nil,
          request_options: {}
        )
        end

        # Edit a customer or contract commit. Contract commits can only be edited using
        # this endpoint if contract editing is enabled.
        sig do
          params(
            commit_id: String,
            customer_id: String,
            access_schedule:
              MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::OrHash,
            applicable_product_ids: T.nilable(T::Array[String]),
            applicable_product_tags: T.nilable(T::Array[String]),
            invoice_contract_id: String,
            invoice_schedule:
              MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::OrHash,
            product_id: String,
            specifiers:
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::Specifier::OrHash
                ]
              ),
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V2::ContractEditCommitResponse)
        end
        def edit_commit(
          # ID of the commit to edit
          commit_id:,
          # ID of the customer whose commit is being edited
          customer_id:,
          access_schedule: nil,
          # Which products the commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          applicable_product_ids: nil,
          # Which tags the commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          applicable_product_tags: nil,
          # ID of contract to use for invoicing
          invoice_contract_id: nil,
          invoice_schedule: nil,
          product_id: nil,
          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          # Instead, to target usage by product or product tag, pass those values in the
          # body of `specifiers`.
          specifiers: nil,
          request_options: {}
        )
        end

        # Edit a customer or contract credit. Contract credits can only be edited using
        # this endpoint if contract editing is enabled.
        sig do
          params(
            credit_id: String,
            customer_id: String,
            access_schedule:
              MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::OrHash,
            applicable_product_ids: T.nilable(T::Array[String]),
            applicable_product_tags: T.nilable(T::Array[String]),
            product_id: String,
            specifiers:
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCreditParams::Specifier::OrHash
                ]
              ),
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V2::ContractEditCreditResponse)
        end
        def edit_credit(
          # ID of the credit to edit
          credit_id:,
          # ID of the customer whose credit is being edited
          customer_id:,
          access_schedule: nil,
          # Which products the credit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the credit applies to all products.
          applicable_product_ids: nil,
          # Which tags the credit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the credit applies to all products.
          applicable_product_tags: nil,
          product_id: nil,
          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          # Instead, to target usage by product or product tag, pass those values in the
          # body of `specifiers`.
          specifiers: nil,
          request_options: {}
        )
        end

        # Get the edit history of a specific contract. Contract editing must be enabled to
        # use this endpoint.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse)
        end
        def get_edit_history(contract_id:, customer_id:, request_options: {})
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
