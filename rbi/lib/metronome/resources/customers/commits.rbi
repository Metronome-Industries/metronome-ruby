# typed: strong

module Metronome
  module Resources
    class Customers
      class Commits
        sig do
          params(
            access_schedule: Metronome::Models::Customers::CommitCreateParams::AccessSchedule,
            customer_id: String,
            priority: Float,
            product_id: String,
            type: Symbol,
            applicable_contract_ids: T::Array[String],
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            invoice_contract_id: String,
            invoice_schedule: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule,
            name: String,
            netsuite_sales_order_id: String,
            rate_type: Symbol,
            salesforce_opportunity_id: String,
            uniqueness_key: String,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Metronome::Models::Customers::CommitCreateResponse)
        end
        def create(
          access_schedule:,
          customer_id:,
          priority:,
          product_id:,
          type:,
          applicable_contract_ids: nil,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          custom_fields: nil,
          description: nil,
          invoice_contract_id: nil,
          invoice_schedule: nil,
          name: nil,
          netsuite_sales_order_id: nil,
          rate_type: nil,
          salesforce_opportunity_id: nil,
          uniqueness_key: nil,
          request_options: {}
        )
        end

        sig do
          params(
            customer_id: String,
            commit_id: String,
            covering_date: Time,
            effective_before: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_contract_commits: T::Boolean,
            include_ledgers: T::Boolean,
            next_page: String,
            starting_at: Time,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Metronome::Models::Customers::CommitListResponse)
        end
        def list(
          customer_id:,
          commit_id: nil,
          covering_date: nil,
          effective_before: nil,
          include_archived: nil,
          include_balance: nil,
          include_contract_commits: nil,
          include_ledgers: nil,
          next_page: nil,
          starting_at: nil,
          request_options: {}
        )
        end

        sig do
          params(
            commit_id: String,
            customer_id: String,
            access_ending_before: Time,
            invoices_ending_before: Time,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Metronome::Models::Customers::CommitUpdateEndDateResponse)
        end
        def update_end_date(
          commit_id:,
          customer_id:,
          access_ending_before: nil,
          invoices_ending_before: nil,
          request_options: {}
        )
        end

        sig { params(client: Metronome::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
