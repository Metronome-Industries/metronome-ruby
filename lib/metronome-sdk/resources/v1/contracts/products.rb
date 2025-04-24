# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class Products
          # Create a new product
          #
          # @param params [MetronomeSDK::Models::V1::Contracts::ProductCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :name displayed on invoices
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Contracts::ProductCreateParams::Type] :type
          #
          #   @option params [String] :billable_metric_id Required for USAGE products
          #
          #   @option params [Array<String>] :composite_product_ids Required for COMPOSITE products
          #
          #   @option params [Array<String>] :composite_tags Required for COMPOSITE products
          #
          #   @option params [Boolean] :exclude_free_usage Beta feature only available for composite products. If true, products with $0
          #     will not be included when computing composite usage. Defaults to false
          #
          #   @option params [Boolean] :is_refundable This field's availability is dependent on your client's configuration. Defaults
          #     to true.
          #
          #   @option params [String] :netsuite_internal_item_id This field's availability is dependent on your client's configuration.
          #
          #   @option params [String] :netsuite_overage_item_id This field's availability is dependent on your client's configuration.
          #
          #   @option params [Array<String>] :presentation_group_key For USAGE products only. Groups usage line items on invoices. The superset of
          #     values in the pricing group key and presentation group key must be set as one
          #     compound group key on the billable metric.
          #
          #   @option params [Array<String>] :pricing_group_key For USAGE products only. If set, pricing for this product will be determined for
          #     each pricing_group_key value, as opposed to the product as a whole. The superset
          #     of values in the pricing group key and presentation group key must be set as one
          #     compound group key on the billable metric.
          #
          #   @option params [MetronomeSDK::Models::V1::Contracts::QuantityConversion, nil] :quantity_conversion Optional. Only valid for USAGE products. If provided, the quantity will be
          #     converted using the provided conversion factor and operation. For example, if
          #     the operation is "multiply" and the conversion factor is 100, then the quantity
          #     will be multiplied by 100. This can be used in cases where data is sent in one
          #     unit and priced in another. For example, data could be sent in MB and priced in
          #     GB. In this case, the conversion factor would be 1024 and the operation would be
          #     "divide".
          #
          #   @option params [MetronomeSDK::Models::V1::Contracts::QuantityRounding, nil] :quantity_rounding Optional. Only valid for USAGE products. If provided, the quantity will be
          #     rounded using the provided rounding method and decimal places. For example, if
          #     the method is "round up" and the decimal places is 0, then the quantity will be
          #     rounded up to the nearest integer.
          #
          #   @option params [Array<String>] :tags
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Contracts::ProductCreateResponse]
          #
          def create(params)
            parsed, options = MetronomeSDK::Models::V1::Contracts::ProductCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/products/create",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::ProductCreateResponse,
              options: options
            )
          end

          # Get a specific product
          #
          # @param params [MetronomeSDK::Models::V1::Contracts::ProductRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :id
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Contracts::ProductRetrieveResponse]
          #
          def retrieve(params)
            parsed, options = MetronomeSDK::Models::V1::Contracts::ProductRetrieveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/products/get",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::ProductRetrieveResponse,
              options: options
            )
          end

          # Update a product
          #
          # @param params [MetronomeSDK::Models::V1::Contracts::ProductUpdateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :product_id ID of the product to update
          #
          #   @option params [Time] :starting_at Timestamp representing when the update should go into effect. It must be on an
          #     hour boundary (e.g. 1:00, not 1:30).
          #
          #   @option params [String] :billable_metric_id Available for USAGE products only. If not provided, defaults to product's
          #     current billable metric.
          #
          #   @option params [Array<String>] :composite_product_ids Available for COMPOSITE products only. If not provided, defaults to product's
          #     current composite_product_ids.
          #
          #   @option params [Array<String>] :composite_tags Available for COMPOSITE products only. If not provided, defaults to product's
          #     current composite_tags.
          #
          #   @option params [Boolean] :exclude_free_usage Beta feature only available for composite products. If true, products with $0
          #     will not be included when computing composite usage. Defaults to false
          #
          #   @option params [Boolean] :is_refundable Defaults to product's current refundability status. This field's availability is
          #     dependent on your client's configuration.
          #
          #   @option params [String] :name displayed on invoices. If not provided, defaults to product's current name.
          #
          #   @option params [String] :netsuite_internal_item_id If not provided, defaults to product's current netsuite_internal_item_id. This
          #     field's availability is dependent on your client's configuration.
          #
          #   @option params [String] :netsuite_overage_item_id Available for USAGE and COMPOSITE products only. If not provided, defaults to
          #     product's current netsuite_overage_item_id. This field's availability is
          #     dependent on your client's configuration.
          #
          #   @option params [Array<String>] :presentation_group_key For USAGE products only. Groups usage line items on invoices. The superset of
          #     values in the pricing group key and presentation group key must be set as one
          #     compound group key on the billable metric.
          #
          #   @option params [Array<String>] :pricing_group_key For USAGE products only. If set, pricing for this product will be determined for
          #     each pricing_group_key value, as opposed to the product as a whole. The superset
          #     of values in the pricing group key and presentation group key must be set as one
          #     compound group key on the billable metric.
          #
          #   @option params [MetronomeSDK::Models::V1::Contracts::QuantityConversion, nil] :quantity_conversion Optional. Only valid for USAGE products. If provided, the quantity will be
          #     converted using the provided conversion factor and operation. For example, if
          #     the operation is "multiply" and the conversion factor is 100, then the quantity
          #     will be multiplied by 100. This can be used in cases where data is sent in one
          #     unit and priced in another. For example, data could be sent in MB and priced in
          #     GB. In this case, the conversion factor would be 1024 and the operation would be
          #     "divide".
          #
          #   @option params [MetronomeSDK::Models::V1::Contracts::QuantityRounding, nil] :quantity_rounding Optional. Only valid for USAGE products. If provided, the quantity will be
          #     rounded using the provided rounding method and decimal places. For example, if
          #     the method is "round up" and the decimal places is 0, then the quantity will be
          #     rounded up to the nearest integer.
          #
          #   @option params [Array<String>] :tags If not provided, defaults to product's current tags
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Contracts::ProductUpdateResponse]
          #
          def update(params)
            parsed, options = MetronomeSDK::Models::V1::Contracts::ProductUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/products/update",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::ProductUpdateResponse,
              options: options
            )
          end

          # List products
          #
          # @param params [MetronomeSDK::Models::V1::Contracts::ProductListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Integer] :limit Query param: Max number of results that should be returned
          #
          #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListParams::ArchiveFilter] :archive_filter Body param: Filter options for the product list
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::Contracts::ProductListResponse>]
          #
          def list(params = {})
            parsed, options = MetronomeSDK::Models::V1::Contracts::ProductListParams.dump_request(params)
            query_params = [:limit, :next_page]
            @client.request(
              method: :post,
              path: "v1/contract-pricing/products/list",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              page: MetronomeSDK::CursorPage,
              model: MetronomeSDK::Models::V1::Contracts::ProductListResponse,
              options: options
            )
          end

          # Archive a product
          #
          # @param params [MetronomeSDK::Models::V1::Contracts::ProductArchiveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :product_id ID of the product to be archived
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Contracts::ProductArchiveResponse]
          #
          def archive(params)
            parsed, options = MetronomeSDK::Models::V1::Contracts::ProductArchiveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/products/archive",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::ProductArchiveResponse,
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
