# typed: strong

module MetronomeSDK
  module Resources
    class V2
      class Contracts
        sig do
          params(
            contract_id: String,
            customer_id: String,
            as_of_date: Time,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse)
        end
        def retrieve(
          contract_id:,
          customer_id:,
          as_of_date: nil,
          include_balance: nil,
          include_ledgers: nil,
          request_options: {}
        )
        end

        sig do
          params(
            customer_id: String,
            covering_date: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            starting_at: Time,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V2::ContractListResponse)
        end
        def list(
          customer_id:,
          covering_date: nil,
          include_archived: nil,
          include_balance: nil,
          include_ledgers: nil,
          starting_at: nil,
          request_options: {}
        )
        end

        sig do
          params(
            contract_id: String,
            customer_id: String,
            add_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit],
            add_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit],
            add_discounts: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount],
            add_overrides: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride],
            add_professional_services: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService],
            add_recurring_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit],
            add_recurring_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit],
            add_reseller_royalties: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty],
            add_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge],
            add_spend_threshold_configuration: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration,
            archive_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit],
            archive_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit],
            archive_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge],
            remove_overrides: T::Array[MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride],
            update_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit],
            update_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit],
            update_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge],
            update_spend_threshold_configuration: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V2::ContractEditResponse)
        end
        def edit(
          contract_id:,
          customer_id:,
          add_commits: nil,
          add_credits: nil,
          add_discounts: nil,
          add_overrides: nil,
          add_professional_services: nil,
          add_recurring_commits: nil,
          add_recurring_credits: nil,
          add_reseller_royalties: nil,
          add_scheduled_charges: nil,
          add_spend_threshold_configuration: nil,
          archive_commits: nil,
          archive_credits: nil,
          archive_scheduled_charges: nil,
          remove_overrides: nil,
          update_commits: nil,
          update_credits: nil,
          update_scheduled_charges: nil,
          update_spend_threshold_configuration: nil,
          request_options: {}
        )
        end

        sig do
          params(
            commit_id: String,
            customer_id: String,
            access_schedule: MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule,
            applicable_product_ids: T.nilable(T::Array[String]),
            applicable_product_tags: T.nilable(T::Array[String]),
            invoice_contract_id: String,
            invoice_schedule: MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule,
            product_id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V2::ContractEditCommitResponse)
        end
        def edit_commit(
          commit_id:,
          customer_id:,
          access_schedule: nil,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          invoice_contract_id: nil,
          invoice_schedule: nil,
          product_id: nil,
          request_options: {}
        )
        end

        sig do
          params(
            credit_id: String,
            customer_id: String,
            access_schedule: MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule,
            applicable_product_ids: T.nilable(T::Array[String]),
            applicable_product_tags: T.nilable(T::Array[String]),
            product_id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V2::ContractEditCreditResponse)
        end
        def edit_credit(
          credit_id:,
          customer_id:,
          access_schedule: nil,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          product_id: nil,
          request_options: {}
        )
        end

        sig do
          params(
            contract_id: String,
            customer_id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse)
        end
        def get_edit_history(contract_id:, customer_id:, request_options: {})
        end

        sig { params(client: MetronomeSDK::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
