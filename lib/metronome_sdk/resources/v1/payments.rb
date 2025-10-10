# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Payments
        # Fetch all payment attempts for the given invoice.
        #
        # @overload list(customer_id:, invoice_id:, limit: nil, next_page: nil, statuses: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param invoice_id [String]
        #
        # @param limit [Integer] The maximum number of payments to return. Defaults to 25.
        #
        # @param next_page [String] The next page token from a previous response.
        #
        # @param statuses [Array<Symbol, MetronomeSDK::Models::V1::PaymentStatus>]
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::BodyCursorPage<MetronomeSDK::Models::V1::Payment>]
        #
        # @see MetronomeSDK::Models::V1::PaymentListParams
        def list(params)
          parsed, options = MetronomeSDK::V1::PaymentListParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/payments/list",
            body: parsed,
            page: MetronomeSDK::Internal::BodyCursorPage,
            model: MetronomeSDK::V1::Payment,
            options: options
          )
        end

        # Trigger a new attempt by canceling any existing attempts for this invoice and
        # creating a new Payment. This will trigger another attempt to charge the
        # Customer's configured Payment Gateway. Payment can only be attempted if all of
        # the following are true:
        #
        # - The Metronome Invoice is finalized
        # - PLG Invoicing is configured for the Customer
        # - You cannot attempt payments for invoices that have already been `paid` or
        #   `voided`.
        #
        # Attempting to payment on an ineligible Invoice or Customer will result in a
        # `400` response.
        #
        # @overload attempt(customer_id:, invoice_id:, request_options: {})
        #
        # @param customer_id [String]
        # @param invoice_id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::PaymentAttemptResponse]
        #
        # @see MetronomeSDK::Models::V1::PaymentAttemptParams
        def attempt(params)
          parsed, options = MetronomeSDK::V1::PaymentAttemptParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/payments/attempt",
            body: parsed,
            model: MetronomeSDK::Models::V1::PaymentAttemptResponse,
            options: options
          )
        end

        # Cancel an existing payment attempt for an invoice.
        #
        # @overload cancel(customer_id:, invoice_id:, request_options: {})
        #
        # @param customer_id [String]
        # @param invoice_id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::PaymentCancelResponse]
        #
        # @see MetronomeSDK::Models::V1::PaymentCancelParams
        def cancel(params)
          parsed, options = MetronomeSDK::V1::PaymentCancelParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/payments/cancel",
            body: parsed,
            model: MetronomeSDK::Models::V1::PaymentCancelResponse,
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
