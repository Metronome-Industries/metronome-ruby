# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Credits
          # Create a new credit at the customer level.
          #
          # @param params [MetronomeSDK::Models::V1::Customers::CreditCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [MetronomeSDK::Models::V1::Customers::CreditCreateParams::AccessSchedule] :access_schedule Schedule for distributing the credit to the customer.
          #
          #   @option params [String] :customer_id
          #
          #   @option params [Float] :priority If multiple credits or commits are applicable, the one with the lower priority
          #     will apply first.
          #
          #   @option params [String] :product_id
          #
          #   @option params [Array<String>] :applicable_contract_ids Which contract the credit applies to. If not provided, the credit applies to all
          #     contracts.
          #
          #   @option params [Array<String>] :applicable_product_ids Which products the credit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the credit applies to all products.
          #
          #   @option params [Array<String>] :applicable_product_tags Which tags the credit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the credit applies to all products.
          #
          #   @option params [Hash{Symbol=>String}] :custom_fields
          #
          #   @option params [String] :description Used only in UI/API. It is not exposed to end customers.
          #
          #   @option params [String] :name displayed on invoices
          #
          #   @option params [String] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Customers::CreditCreateParams::RateType] :rate_type
          #
          #   @option params [String] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
          #
          #   @option params [String] :uniqueness_key Prevents the creation of duplicates. If a request to create a commit or credit
          #     is made with a uniqueness key that was previously used to create a commit or
          #     credit, a new record will not be created and the request will fail with a 409
          #     error.
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Customers::CreditCreateResponse]
          #
          def create(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::CreditCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCredits/create",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::CreditCreateResponse,
              options: options
            )
          end

          # List credits.
          #
          # @param params [MetronomeSDK::Models::V1::Customers::CreditListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :customer_id
          #
          #   @option params [Time] :covering_date Return only credits that have access schedules that "cover" the provided date
          #
          #   @option params [String] :credit_id
          #
          #   @option params [Time] :effective_before Include only credits that have any access before the provided date (exclusive)
          #
          #   @option params [Boolean] :include_archived Include archived credits and credits from archived contracts.
          #
          #   @option params [Boolean] :include_balance Include the balance in the response. Setting this flag may cause the query to be
          #     slower.
          #
          #   @option params [Boolean] :include_contract_credits Include credits on the contract level.
          #
          #   @option params [Boolean] :include_ledgers Include credit ledgers in the response. Setting this flag may cause the query to
          #     be slower.
          #
          #   @option params [String] :next_page The next page token from a previous response.
          #
          #   @option params [Time] :starting_at Include only credits that have any access on or after the provided date
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Customers::CreditListResponse]
          #
          def list(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::CreditListParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCredits/list",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::CreditListResponse,
              options: options
            )
          end

          # Pull forward the end date of a credit. Use the "edit a credit" endpoint to
          #   extend the end date of a credit, or to make other edits to the credit.
          #
          # @param params [MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Time] :access_ending_before RFC 3339 timestamp indicating when access to the credit will end and it will no
          #     longer be possible to draw it down (exclusive).
          #
          #   @option params [String] :credit_id ID of the commit to update
          #
          #   @option params [String] :customer_id ID of the customer whose credit is to be updated
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateResponse]
          #
          def update_end_date(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCredits/updateEndDate",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateResponse,
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
end
