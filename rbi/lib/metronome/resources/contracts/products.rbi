# typed: strong

module Metronome
  module Resources
    class Contracts
      class Products
        sig do
          params(
            name: String,
            type: Symbol,
            billable_metric_id: String,
            composite_product_ids: T::Array[String],
            composite_tags: T::Array[String],
            exclude_free_usage: T::Boolean,
            is_refundable: T::Boolean,
            netsuite_internal_item_id: String,
            netsuite_overage_item_id: String,
            presentation_group_key: T::Array[String],
            pricing_group_key: T::Array[String],
            quantity_conversion: T.nilable(Metronome::Models::Contracts::QuantityConversion),
            quantity_rounding: T.nilable(Metronome::Models::Contracts::QuantityRounding),
            tags: T::Array[String],
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Metronome::Models::Contracts::ProductCreateResponse)
        end
        def create(
          name:,
          type:,
          billable_metric_id: nil,
          composite_product_ids: nil,
          composite_tags: nil,
          exclude_free_usage: nil,
          is_refundable: nil,
          netsuite_internal_item_id: nil,
          netsuite_overage_item_id: nil,
          presentation_group_key: nil,
          pricing_group_key: nil,
          quantity_conversion: nil,
          quantity_rounding: nil,
          tags: nil,
          request_options: {}
        )
        end

        sig do
          params(
            id: String,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Metronome::Models::Contracts::ProductRetrieveResponse)
        end
        def retrieve(id:, request_options: {})
        end

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
            quantity_conversion: T.nilable(Metronome::Models::Contracts::QuantityConversion),
            quantity_rounding: T.nilable(Metronome::Models::Contracts::QuantityRounding),
            tags: T::Array[String],
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Metronome::Models::Contracts::ProductUpdateResponse)
        end
        def update(
          product_id:,
          starting_at:,
          billable_metric_id: nil,
          composite_product_ids: nil,
          composite_tags: nil,
          exclude_free_usage: nil,
          is_refundable: nil,
          name: nil,
          netsuite_internal_item_id: nil,
          netsuite_overage_item_id: nil,
          presentation_group_key: nil,
          pricing_group_key: nil,
          quantity_conversion: nil,
          quantity_rounding: nil,
          tags: nil,
          request_options: {}
        )
        end

        sig do
          params(
            limit: Integer,
            next_page: String,
            archive_filter: Symbol,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Metronome::CursorPage[Metronome::Models::Contracts::ProductListResponse])
        end
        def list(limit: nil, next_page: nil, archive_filter: nil, request_options: {})
        end

        sig do
          params(
            product_id: String,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Metronome::Models::Contracts::ProductArchiveResponse)
        end
        def archive(product_id:, request_options: {})
        end

        sig { params(client: Metronome::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
