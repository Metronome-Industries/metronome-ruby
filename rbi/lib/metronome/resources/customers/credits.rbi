# typed: strong

module Metronome
  module Resources
    class Customers
      class Credits
        sig do
          params(
            params: T.any(Metronome::Models::Customers::CreditCreateParams, T::Hash[Symbol, T.anything]),
            access_schedule: Metronome::Models::Customers::CreditCreateParams::AccessSchedule,
            customer_id: String,
            priority: Float,
            product_id: String,
            applicable_contract_ids: T::Array[String],
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            name: String,
            netsuite_sales_order_id: String,
            rate_type: Symbol,
            salesforce_opportunity_id: String,
            uniqueness_key: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::CreditCreateResponse)
        end
        def create(
          params,
          access_schedule:,
          customer_id:,
          priority:,
          product_id:,
          applicable_contract_ids:,
          applicable_product_ids:,
          applicable_product_tags:,
          custom_fields:,
          description:,
          name:,
          netsuite_sales_order_id:,
          rate_type:,
          salesforce_opportunity_id:,
          uniqueness_key:,
          request_options: {}
        ); end

        sig do
          params(
            params: T.any(Metronome::Models::Customers::CreditListParams, T::Hash[Symbol, T.anything]),
            customer_id: String,
            covering_date: Time,
            credit_id: String,
            effective_before: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_contract_credits: T::Boolean,
            include_ledgers: T::Boolean,
            next_page: String,
            starting_at: Time,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::CreditListResponse)
        end
        def list(
          params,
          customer_id:,
          covering_date:,
          credit_id:,
          effective_before:,
          include_archived:,
          include_balance:,
          include_contract_credits:,
          include_ledgers:,
          next_page:,
          starting_at:,
          request_options: {}
        ); end

        sig do
          params(
            params: T.any(
              Metronome::Models::Customers::CreditUpdateEndDateParams,
              T::Hash[Symbol, T.anything]
            ),
            access_ending_before: Time,
            credit_id: String,
            customer_id: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::CreditUpdateEndDateResponse)
        end
        def update_end_date(params, access_ending_before:, credit_id:, customer_id:, request_options: {}); end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end
