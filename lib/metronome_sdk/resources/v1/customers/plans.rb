# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Plans
          # List the given customer's plans in reverse-chronological order.
          #
          # @overload list(customer_id:, limit: nil, next_page: nil, request_options: {})
          #
          # @param customer_id [String] Path param:
          #
          # @param limit [Integer] Query param: Max number of results that should be returned
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::Customers::PlanListResponse>]
          #
          # @see MetronomeSDK::Models::V1::Customers::PlanListParams
          def list(params)
            parsed, options = MetronomeSDK::V1::Customers::PlanListParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["v1/customers/%1$s/plans", customer_id],
              query: parsed,
              page: MetronomeSDK::Internal::CursorPage,
              model: MetronomeSDK::Models::V1::Customers::PlanListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::PlanAddParams} for more details.
          #
          # Associate an existing customer with a plan for a specified date range. See the
          # [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
          # for details on the price adjustments.
          #
          # @overload add(customer_id:, plan_id:, starting_on:, ending_before: nil, net_payment_terms_days: nil, overage_rate_adjustments: nil, price_adjustments: nil, trial_spec: nil, request_options: {})
          #
          # @param customer_id [String] Path param:
          #
          # @param plan_id [String] Body param:
          #
          # @param starting_on [Time] Body param: RFC 3339 timestamp for when the plan becomes active for this custome
          #
          # @param ending_before [Time] Body param: RFC 3339 timestamp for when the plan ends (exclusive) for this custo
          #
          # @param net_payment_terms_days [Float] Body param: Number of days after issuance of invoice after which the invoice is
          #
          # @param overage_rate_adjustments [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment>] Body param: An optional list of overage rates that override the rates of the ori
          #
          # @param price_adjustments [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment>] Body param: A list of price adjustments can be applied on top of the pricing in
          #
          # @param trial_spec [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec] Body param: A custom trial can be set for the customer's plan. See the [trial co
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::PlanAddResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::PlanAddParams
          def add(params)
            parsed, options = MetronomeSDK::V1::Customers::PlanAddParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["v1/customers/%1$s/plans/add", customer_id],
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::PlanAddResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::PlanEndParams} for more details.
          #
          # Change the end date of a customer's plan.
          #
          # @overload end_(customer_id:, customer_plan_id:, ending_before: nil, void_invoices: nil, void_stripe_invoices: nil, request_options: {})
          #
          # @param customer_id [String] Path param:
          #
          # @param customer_plan_id [String] Path param: the ID of a customer-plan relationship
          #
          # @param ending_before [Time] Body param: RFC 3339 timestamp for when the plan ends (exclusive) for this custo
          #
          # @param void_invoices [Boolean] Body param: If true, plan end date can be before the last finalized invoice date
          #
          # @param void_stripe_invoices [Boolean] Body param: Only applicable when void_invoices is set to true. If true, for ever
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::PlanEndResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::PlanEndParams
          def end_(params)
            parsed, options = MetronomeSDK::V1::Customers::PlanEndParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            customer_plan_id =
              parsed.delete(:customer_plan_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["v1/customers/%1$s/plans/%2$s/end", customer_id, customer_plan_id],
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::PlanEndResponse,
              options: options
            )
          end

          # Lists a customer plans adjustments. See the
          # [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
          # for details.
          #
          # @overload list_price_adjustments(customer_id:, customer_plan_id:, limit: nil, next_page: nil, request_options: {})
          #
          # @param customer_id [String] Path param:
          #
          # @param customer_plan_id [String] Path param: the ID of a customer-plan relationship
          #
          # @param limit [Integer] Query param: Max number of results that should be returned
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse>]
          #
          # @see MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsParams
          def list_price_adjustments(params)
            parsed, options = MetronomeSDK::V1::Customers::PlanListPriceAdjustmentsParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            customer_plan_id =
              parsed.delete(:customer_plan_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["v1/customers/%1$s/plans/%2$s/priceAdjustments", customer_id, customer_plan_id],
              query: parsed,
              page: MetronomeSDK::Internal::CursorPage,
              model: MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse,
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
