# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      class Products
        # @param client [Metronome::Client]
        def initialize(client:)
          @client = client
        end

        # Create a new product
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :name displayed on invoices
        #   @option params [Symbol, Type] :type
        #   @option params [String, nil] :billable_metric_id Required for USAGE products
        #   @option params [Array<String>, nil] :composite_product_ids Required for COMPOSITE products
        #   @option params [Array<String>, nil] :composite_tags Required for COMPOSITE products
        #   @option params [Boolean, nil] :exclude_free_usage Beta feature only available for composite products. If true, products with $0
        #     will not be included when computing composite usage. Defaults to false
        #   @option params [Boolean, nil] :is_refundable This field's availability is dependent on your client's configuration. Defaults
        #     to true.
        #   @option params [String, nil] :netsuite_internal_item_id This field's availability is dependent on your client's configuration.
        #   @option params [String, nil] :netsuite_overage_item_id This field's availability is dependent on your client's configuration.
        #   @option params [Array<String>, nil] :presentation_group_key For USAGE products only. Groups usage line items on invoices.
        #   @option params [Array<String>, nil] :pricing_group_key For USAGE products only. If set, pricing for this product will be determined for
        #     each pricing_group_key value, as opposed to the product as a whole.
        #   @option params [Metronome::Models::QuantityConversion, nil] :quantity_conversion Optional. Only valid for USAGE products. If provided, the quantity will be
        #     converted using the provided conversion factor and operation. For example, if
        #     the operation is "multiply" and the conversion factor is 100, then the quantity
        #     will be multiplied by 100. This can be used in cases where data is sent in one
        #     unit and priced in another. For example, data could be sent in MB and priced in
        #     GB. In this case, the conversion factor would be 1024 and the operation would be
        #     "divide".
        #   @option params [Metronome::Models::QuantityRounding, nil] :quantity_rounding Optional. Only valid for USAGE products. If provided, the quantity will be
        #     rounded using the provided rounding method and decimal places. For example, if
        #     the method is "round up" and the decimal places is 0, then the quantity will be
        #     rounded up to the nearest integer.
        #   @option params [Array<String>, nil] :tags
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::ProductCreateResponse]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/contract-pricing/products/create",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Metronome::Models::ProductCreateResponse
          }
          @client.request(req, opts)
        end

        # Get a specific product
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :id
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::ProductRetrieveResponse]
        def retrieve(params = {}, opts = {})
          req = {
            method: :post,
            path: "/contract-pricing/products/get",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Metronome::Models::ProductRetrieveResponse
          }
          @client.request(req, opts)
        end

        # Update a product
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :product_id ID of the product to update
        #   @option params [Time] :starting_at Timestamp representing when the update should go into effect. It must be on an
        #     hour boundary (e.g. 1:00, not 1:30).
        #   @option params [String, nil] :billable_metric_id Available for USAGE products only. If not provided, defaults to product's
        #     current billable metric.
        #   @option params [Array<String>, nil] :composite_product_ids Available for COMPOSITE products only. If not provided, defaults to product's
        #     current composite_product_ids.
        #   @option params [Array<String>, nil] :composite_tags Available for COMPOSITE products only. If not provided, defaults to product's
        #     current composite_tags.
        #   @option params [Boolean, nil] :exclude_free_usage Beta feature only available for composite products. If true, products with $0
        #     will not be included when computing composite usage. Defaults to false
        #   @option params [Boolean, nil] :is_refundable Defaults to product's current refundability status. This field's availability is
        #     dependent on your client's configuration.
        #   @option params [String, nil] :name displayed on invoices. If not provided, defaults to product's current name.
        #   @option params [String, nil] :netsuite_internal_item_id If not provided, defaults to product's current netsuite_internal_item_id. This
        #     field's availability is dependent on your client's configuration.
        #   @option params [String, nil] :netsuite_overage_item_id Available for USAGE and COMPOSITE products only. If not provided, defaults to
        #     product's current netsuite_overage_item_id. This field's availability is
        #     dependent on your client's configuration.
        #   @option params [Array<String>, nil] :presentation_group_key For USAGE products only. Groups usage line items on invoices.
        #   @option params [Array<String>, nil] :pricing_group_key For USAGE products only. If set, pricing for this product will be determined for
        #     each pricing_group_key value, as opposed to the product as a whole.
        #   @option params [Metronome::Models::QuantityConversion, nil] :quantity_conversion Optional. Only valid for USAGE products. If provided, the quantity will be
        #     converted using the provided conversion factor and operation. For example, if
        #     the operation is "multiply" and the conversion factor is 100, then the quantity
        #     will be multiplied by 100. This can be used in cases where data is sent in one
        #     unit and priced in another. For example, data could be sent in MB and priced in
        #     GB. In this case, the conversion factor would be 1024 and the operation would be
        #     "divide".
        #   @option params [Metronome::Models::QuantityRounding, nil] :quantity_rounding Optional. Only valid for USAGE products. If provided, the quantity will be
        #     rounded using the provided rounding method and decimal places. For example, if
        #     the method is "round up" and the decimal places is 0, then the quantity will be
        #     rounded up to the nearest integer.
        #   @option params [Array<String>, nil] :tags If not provided, defaults to product's current tags
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::ProductUpdateResponse]
        def update(params = {}, opts = {})
          req = {
            method: :post,
            path: "/contract-pricing/products/update",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Metronome::Models::ProductUpdateResponse
          }
          @client.request(req, opts)
        end

        # List products
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
        #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
        #   @option params [Symbol, ArchiveFilter, nil] :archive_filter Body param: Filter options for the product list
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::CursorPage<Metronome::Models::ProductListResponse>]
        def list(params = {}, opts = {})
          query_params = [:limit, :next_page]
          req = {
            method: :post,
            path: "/contract-pricing/products/list",
            query: params.slice(*query_params),
            body: params.except(*query_params),
            headers: {"Content-Type" => "application/json"},
            page: Metronome::CursorPage,
            model: Metronome::Models::ProductListResponse
          }
          @client.request(req, opts)
        end

        # Archive a product
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :product_id ID of the product to be archived
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::ProductArchiveResponse]
        def archive(params = {}, opts = {})
          req = {
            method: :post,
            path: "/contract-pricing/products/archive",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Metronome::Models::ProductArchiveResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
