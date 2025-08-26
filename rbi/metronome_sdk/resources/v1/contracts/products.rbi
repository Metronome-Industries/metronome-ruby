# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class Products
          # Create a new product object. Products in Metronome represent your company's
          # individual product or service offerings. A Product can be thought of as the
          # basic unit of a line item on the invoice. This is analogous to SKUs or items in
          # an ERP system. Give the product a meaningful name as they will appear on
          # customer invoices.
          sig do
            params(
              name: String,
              type:
                MetronomeSDK::V1::Contracts::ProductCreateParams::Type::OrSymbol,
              billable_metric_id: String,
              composite_product_ids: T::Array[String],
              composite_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              exclude_free_usage: T::Boolean,
              is_refundable: T::Boolean,
              netsuite_internal_item_id: String,
              netsuite_overage_item_id: String,
              presentation_group_key: T::Array[String],
              pricing_group_key: T::Array[String],
              quantity_conversion:
                T.nilable(
                  MetronomeSDK::V1::Contracts::QuantityConversion::OrHash
                ),
              quantity_rounding:
                T.nilable(
                  MetronomeSDK::V1::Contracts::QuantityRounding::OrHash
                ),
              tags: T::Array[String],
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Contracts::ProductCreateResponse
            )
          end
          def create(
            # displayed on invoices
            name:,
            type:,
            # Required for USAGE products
            billable_metric_id: nil,
            # Required for COMPOSITE products
            composite_product_ids: nil,
            # Required for COMPOSITE products
            composite_tags: nil,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields: nil,
            # Beta feature only available for composite products. If true, products with $0
            # will not be included when computing composite usage. Defaults to false
            exclude_free_usage: nil,
            # This field's availability is dependent on your client's configuration. Defaults
            # to true.
            is_refundable: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_internal_item_id: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_overage_item_id: nil,
            # For USAGE products only. Groups usage line items on invoices. The superset of
            # values in the pricing group key and presentation group key must be set as one
            # compound group key on the billable metric.
            presentation_group_key: nil,
            # For USAGE products only. If set, pricing for this product will be determined for
            # each pricing_group_key value, as opposed to the product as a whole. The superset
            # of values in the pricing group key and presentation group key must be set as one
            # compound group key on the billable metric.
            pricing_group_key: nil,
            # Optional. Only valid for USAGE products. If provided, the quantity will be
            # converted using the provided conversion factor and operation. For example, if
            # the operation is "multiply" and the conversion factor is 100, then the quantity
            # will be multiplied by 100. This can be used in cases where data is sent in one
            # unit and priced in another. For example, data could be sent in MB and priced in
            # GB. In this case, the conversion factor would be 1024 and the operation would be
            # "divide".
            quantity_conversion: nil,
            # Optional. Only valid for USAGE products. If provided, the quantity will be
            # rounded using the provided rounding method and decimal places. For example, if
            # the method is "round up" and the decimal places is 0, then the quantity will be
            # rounded up to the nearest integer.
            quantity_rounding: nil,
            tags: nil,
            request_options: {}
          )
          end

          # Retrieve a product by its ID, including all metadata and historical changes.
          sig do
            params(
              id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Contracts::ProductRetrieveResponse
            )
          end
          def retrieve(id:, request_options: {})
          end

          # Updates a product's configuration while maintaining billing continuity for
          # active customers. Use this endpoint to modify product names, metrics, pricing
          # rules, and composite settings without disrupting ongoing billing cycles. Changes
          # are scheduled using the starting_at timestamp, which must be on an hour
          # boundary—set future dates to schedule updates ahead of time, or past dates for
          # retroactive changes. Returns the updated product ID upon success.
          #
          # Usage guidance: Product type cannot be changed after creation. For incorrect
          # product types, create a new product and archive the original instead.
          sig do
            params(
              product_id: String,
              starting_at: Time,
              billable_metric_id: String,
              composite_product_ids: T::Array[String],
              composite_tags: T::Array[String],
              exclude_free_usage: T::Boolean,
              is_refundable: T::Boolean,
              name: String,
              netsuite_internal_item_id: String,
              netsuite_overage_item_id: String,
              presentation_group_key: T::Array[String],
              pricing_group_key: T::Array[String],
              quantity_conversion:
                T.nilable(
                  MetronomeSDK::V1::Contracts::QuantityConversion::OrHash
                ),
              quantity_rounding:
                T.nilable(
                  MetronomeSDK::V1::Contracts::QuantityRounding::OrHash
                ),
              tags: T::Array[String],
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Contracts::ProductUpdateResponse
            )
          end
          def update(
            # ID of the product to update
            product_id:,
            # Timestamp representing when the update should go into effect. It must be on an
            # hour boundary (e.g. 1:00, not 1:30).
            starting_at:,
            # Available for USAGE products only. If not provided, defaults to product's
            # current billable metric.
            billable_metric_id: nil,
            # Available for COMPOSITE products only. If not provided, defaults to product's
            # current composite_product_ids.
            composite_product_ids: nil,
            # Available for COMPOSITE products only. If not provided, defaults to product's
            # current composite_tags.
            composite_tags: nil,
            # Beta feature only available for composite products. If true, products with $0
            # will not be included when computing composite usage. Defaults to false
            exclude_free_usage: nil,
            # Defaults to product's current refundability status. This field's availability is
            # dependent on your client's configuration.
            is_refundable: nil,
            # displayed on invoices. If not provided, defaults to product's current name.
            name: nil,
            # If not provided, defaults to product's current netsuite_internal_item_id. This
            # field's availability is dependent on your client's configuration.
            netsuite_internal_item_id: nil,
            # Available for USAGE and COMPOSITE products only. If not provided, defaults to
            # product's current netsuite_overage_item_id. This field's availability is
            # dependent on your client's configuration.
            netsuite_overage_item_id: nil,
            # For USAGE products only. Groups usage line items on invoices. The superset of
            # values in the pricing group key and presentation group key must be set as one
            # compound group key on the billable metric.
            presentation_group_key: nil,
            # For USAGE products only. If set, pricing for this product will be determined for
            # each pricing_group_key value, as opposed to the product as a whole. The superset
            # of values in the pricing group key and presentation group key must be set as one
            # compound group key on the billable metric.
            pricing_group_key: nil,
            # Optional. Only valid for USAGE products. If provided, the quantity will be
            # converted using the provided conversion factor and operation. For example, if
            # the operation is "multiply" and the conversion factor is 100, then the quantity
            # will be multiplied by 100. This can be used in cases where data is sent in one
            # unit and priced in another. For example, data could be sent in MB and priced in
            # GB. In this case, the conversion factor would be 1024 and the operation would be
            # "divide".
            quantity_conversion: nil,
            # Optional. Only valid for USAGE products. If provided, the quantity will be
            # rounded using the provided rounding method and decimal places. For example, if
            # the method is "round up" and the decimal places is 0, then the quantity will be
            # rounded up to the nearest integer.
            quantity_rounding: nil,
            # If not provided, defaults to product's current tags
            tags: nil,
            request_options: {}
          )
          end

          # Get a paginated list of all products in your organization with their complete
          # configuration, version history, and metadata. By default excludes archived
          # products unless explicitly requested via the archive_filter parameter.
          sig do
            params(
              limit: Integer,
              next_page: String,
              archive_filter:
                MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Internal::CursorPage[
                MetronomeSDK::Models::V1::Contracts::ProductListResponse
              ]
            )
          end
          def list(
            # Query param: Max number of results that should be returned
            limit: nil,
            # Query param: Cursor that indicates where the next page of results should start.
            next_page: nil,
            # Body param: Filter options for the product list. If not provided, defaults to
            # not archived.
            archive_filter: nil,
            request_options: {}
          )
          end

          # Archive a product. Any current rate cards associated with this product will
          # continue to function as normal. However, it will no longer be available as an
          # option for newly created rates. Once you archive a product, you can still
          # retrieve it in the UI and API, but you cannot unarchive it.
          sig do
            params(
              product_id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Contracts::ProductArchiveResponse
            )
          end
          def archive(
            # ID of the product to be archived
            product_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
