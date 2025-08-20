# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class Products
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Contracts::ProductCreateParams} for more details.
          #
          # Create a new product
          #
          # @overload create(name:, type:, billable_metric_id: nil, composite_product_ids: nil, composite_tags: nil, custom_fields: nil, exclude_free_usage: nil, is_refundable: nil, netsuite_internal_item_id: nil, netsuite_overage_item_id: nil, presentation_group_key: nil, pricing_group_key: nil, quantity_conversion: nil, quantity_rounding: nil, tags: nil, request_options: {})
          #
          # @param name [String] displayed on invoices
          #
          # @param type [Symbol, MetronomeSDK::Models::V1::Contracts::ProductCreateParams::Type]
          #
          # @param billable_metric_id [String] Required for USAGE products
          #
          # @param composite_product_ids [Array<String>] Required for COMPOSITE products
          #
          # @param composite_tags [Array<String>] Required for COMPOSITE products
          #
          # @param custom_fields [Hash{Symbol=>String}]
          #
          # @param exclude_free_usage [Boolean] Beta feature only available for composite products. If true, products with $0 wi
          #
          # @param is_refundable [Boolean] This field's availability is dependent on your client's configuration. Defaults
          #
          # @param netsuite_internal_item_id [String] This field's availability is dependent on your client's configuration.
          #
          # @param netsuite_overage_item_id [String] This field's availability is dependent on your client's configuration.
          #
          # @param presentation_group_key [Array<String>] For USAGE products only. Groups usage line items on invoices. The superset of va
          #
          # @param pricing_group_key [Array<String>] For USAGE products only. If set, pricing for this product will be determined for
          #
          # @param quantity_conversion [MetronomeSDK::Models::V1::Contracts::ProductCreateParams::QuantityConversion, nil] Optional. Only valid for USAGE products. If provided, the quantity will be conve
          #
          # @param quantity_rounding [MetronomeSDK::Models::V1::Contracts::ProductCreateParams::QuantityRounding, nil] Optional. Only valid for USAGE products. If provided, the quantity will be round
          #
          # @param tags [Array<String>]
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::ProductCreateResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::ProductCreateParams
          def create(params)
            parsed, options = MetronomeSDK::V1::Contracts::ProductCreateParams.dump_request(params)
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
          # @overload retrieve(id:, request_options: {})
          #
          # @param id [String]
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::ProductRetrieveResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::ProductRetrieveParams
          def retrieve(params)
            parsed, options = MetronomeSDK::V1::Contracts::ProductRetrieveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/products/get",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::ProductRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Contracts::ProductUpdateParams} for more details.
          #
          # Update a product
          #
          # @overload update(product_id:, starting_at:, billable_metric_id: nil, composite_product_ids: nil, composite_tags: nil, exclude_free_usage: nil, is_refundable: nil, name: nil, netsuite_internal_item_id: nil, netsuite_overage_item_id: nil, presentation_group_key: nil, pricing_group_key: nil, quantity_conversion: nil, quantity_rounding: nil, tags: nil, request_options: {})
          #
          # @param product_id [String] ID of the product to update
          #
          # @param starting_at [Time] Timestamp representing when the update should go into effect. It must be on an h
          #
          # @param billable_metric_id [String] Available for USAGE products only. If not provided, defaults to product's curren
          #
          # @param composite_product_ids [Array<String>] Available for COMPOSITE products only. If not provided, defaults to product's cu
          #
          # @param composite_tags [Array<String>] Available for COMPOSITE products only. If not provided, defaults to product's cu
          #
          # @param exclude_free_usage [Boolean] Beta feature only available for composite products. If true, products with $0 wi
          #
          # @param is_refundable [Boolean] Defaults to product's current refundability status. This field's availability is
          #
          # @param name [String] displayed on invoices. If not provided, defaults to product's current name.
          #
          # @param netsuite_internal_item_id [String] If not provided, defaults to product's current netsuite_internal_item_id. This f
          #
          # @param netsuite_overage_item_id [String] Available for USAGE and COMPOSITE products only. If not provided, defaults to pr
          #
          # @param presentation_group_key [Array<String>] For USAGE products only. Groups usage line items on invoices. The superset of va
          #
          # @param pricing_group_key [Array<String>] For USAGE products only. If set, pricing for this product will be determined for
          #
          # @param quantity_conversion [MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityConversion, nil] Optional. Only valid for USAGE products. If provided, the quantity will be conve
          #
          # @param quantity_rounding [MetronomeSDK::Models::V1::Contracts::ProductUpdateParams::QuantityRounding, nil] Optional. Only valid for USAGE products. If provided, the quantity will be round
          #
          # @param tags [Array<String>] If not provided, defaults to product's current tags
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::ProductUpdateResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::ProductUpdateParams
          def update(params)
            parsed, options = MetronomeSDK::V1::Contracts::ProductUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/products/update",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::ProductUpdateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Contracts::ProductListParams} for more details.
          #
          # List products
          #
          # @overload list(limit: nil, next_page: nil, archive_filter: nil, request_options: {})
          #
          # @param limit [Integer] Query param: Max number of results that should be returned
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param archive_filter [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListParams::ArchiveFilter] Body param: Filter options for the product list. If not provided, defaults to no
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::Contracts::ProductListResponse>]
          #
          # @see MetronomeSDK::Models::V1::Contracts::ProductListParams
          def list(params = {})
            parsed, options = MetronomeSDK::V1::Contracts::ProductListParams.dump_request(params)
            query_params = [:limit, :next_page]
            @client.request(
              method: :post,
              path: "v1/contract-pricing/products/list",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              page: MetronomeSDK::Internal::CursorPage,
              model: MetronomeSDK::Models::V1::Contracts::ProductListResponse,
              options: options
            )
          end

          # Archive a product
          #
          # @overload archive(product_id:, request_options: {})
          #
          # @param product_id [String] ID of the product to be archived
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::ProductArchiveResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::ProductArchiveParams
          def archive(params)
            parsed, options = MetronomeSDK::V1::Contracts::ProductArchiveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/products/archive",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::ProductArchiveResponse,
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
