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
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::CommitCreateResponse)
        end
        def create(
          access_schedule:,
          customer_id:,
          priority:,
          product_id:,
          type:,
          applicable_contract_ids:,
          applicable_product_ids:,
          applicable_product_tags:,
          custom_fields:,
          description:,
          invoice_contract_id:,
          invoice_schedule:,
          name:,
          netsuite_sales_order_id:,
          rate_type:,
          salesforce_opportunity_id:,
          uniqueness_key:,
          request_options: {}
        ); end

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
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::CommitListResponse)
        end
        def list(
          customer_id:,
          commit_id:,
          covering_date:,
          effective_before:,
          include_archived:,
          include_balance:,
          include_contract_commits:,
          include_ledgers:,
          next_page:,
          starting_at:,
          request_options: {}
        ); end

        sig do
          params(
            commit_id: String,
            customer_id: String,
            access_ending_before: Time,
            invoices_ending_before: Time,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::CommitUpdateEndDateResponse)
        end
        def update_end_date(
          commit_id:,
          customer_id:,
          access_ending_before:,
          invoices_ending_before:,
          request_options: {}
        )
        end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end
