# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Credits
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::CreditCreateParams} for more details.
          #
          # Create a new credit at the customer level.
          #
          # @overload create(access_schedule:, customer_id:, priority:, product_id:, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, name: nil, netsuite_sales_order_id: nil, rate_type: nil, salesforce_opportunity_id: nil, specifiers: nil, uniqueness_key: nil, request_options: {})
          #
          # @param access_schedule [MetronomeSDK::V1::Customers::CreditCreateParams::AccessSchedule] Schedule for distributing the credit to the customer.
          #
          # @param customer_id [String]
          #
          # @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
          #
          # @param product_id [String]
          #
          # @param applicable_contract_ids [Array<String>] Which contract the credit applies to. If not provided, the credit applies to all
          #
          # @param applicable_product_ids [Array<String>] Which products the credit applies to. If both applicable_product_ids and applica
          #
          # @param applicable_product_tags [Array<String>] Which tags the credit applies to. If both applicable*product_ids and applicable*
          #
          # @param custom_fields [Hash{Symbol=>String}]
          #
          # @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          # @param name [String] displayed on invoices
          #
          # @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          # @param rate_type [Symbol, MetronomeSDK::V1::Customers::CreditCreateParams::RateType]
          #
          # @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
          #
          # @param specifiers [Array<MetronomeSDK::V1::Customers::CreditCreateParams::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
          #
          # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::CreditCreateResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::CreditCreateParams
          def create(params)
            parsed, options = MetronomeSDK::V1::Customers::CreditCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCredits/create",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::CreditCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::CreditListParams} for more details.
          #
          # List credits.
          #
          # @overload list(customer_id:, covering_date: nil, credit_id: nil, effective_before: nil, include_archived: nil, include_balance: nil, include_contract_credits: nil, include_ledgers: nil, next_page: nil, starting_at: nil, request_options: {})
          #
          # @param customer_id [String]
          #
          # @param covering_date [Time] Return only credits that have access schedules that "cover" the provided date
          #
          # @param credit_id [String]
          #
          # @param effective_before [Time] Include only credits that have any access before the provided date (exclusive)
          #
          # @param include_archived [Boolean] Include archived credits and credits from archived contracts.
          #
          # @param include_balance [Boolean] Include the balance in the response. Setting this flag may cause the query to be
          #
          # @param include_contract_credits [Boolean] Include credits on the contract level.
          #
          # @param include_ledgers [Boolean] Include credit ledgers in the response. Setting this flag may cause the query to
          #
          # @param next_page [String] The next page token from a previous response.
          #
          # @param starting_at [Time] Include only credits that have any access on or after the provided date
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::CreditListResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::CreditListParams
          def list(params)
            parsed, options = MetronomeSDK::V1::Customers::CreditListParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCredits/list",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::CreditListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateParams} for more
          # details.
          #
          # Pull forward the end date of a credit. Use the "edit a credit" endpoint to
          # extend the end date of a credit, or to make other edits to the credit.
          #
          # @overload update_end_date(access_ending_before:, credit_id:, customer_id:, request_options: {})
          #
          # @param access_ending_before [Time] RFC 3339 timestamp indicating when access to the credit will end and it will no
          #
          # @param credit_id [String] ID of the commit to update
          #
          # @param customer_id [String] ID of the customer whose credit is to be updated
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateParams
          def update_end_date(params)
            parsed, options = MetronomeSDK::V1::Customers::CreditUpdateEndDateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCredits/updateEndDate",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateResponse,
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
end
