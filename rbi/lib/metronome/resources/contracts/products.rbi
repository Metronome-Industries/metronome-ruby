# typed: strong

module Metronome
  module Resources
    class Contracts
      class Products
        sig do
          params(
            params: T.any(Metronome::Models::Contracts::ProductCreateParams, T::Hash[Symbol, T.anything]),
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
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Contracts::ProductCreateResponse)
        end
        def create(
          params,
          name:,
          type:,
          billable_metric_id:,
          composite_product_ids:,
          composite_tags:,
          exclude_free_usage:,
          is_refundable:,
          netsuite_internal_item_id:,
          netsuite_overage_item_id:,
          presentation_group_key:,
          pricing_group_key:,
          quantity_conversion:,
          quantity_rounding:,
          tags:,
          request_options: {}
        ); end

        sig do
          params(
            params: T.any(Metronome::Models::Contracts::ProductRetrieveParams, T::Hash[Symbol, T.anything]),
            id: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Contracts::ProductRetrieveResponse)
        end
        def retrieve(params, id:, request_options: {}); end

        sig do
          params(
            params: T.any(Metronome::Models::Contracts::ProductUpdateParams, T::Hash[Symbol, T.anything]),
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
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Contracts::ProductUpdateResponse)
        end
        def update(
          params,
          product_id:,
          starting_at:,
          billable_metric_id:,
          composite_product_ids:,
          composite_tags:,
          exclude_free_usage:,
          is_refundable:,
          name:,
          netsuite_internal_item_id:,
          netsuite_overage_item_id:,
          presentation_group_key:,
          pricing_group_key:,
          quantity_conversion:,
          quantity_rounding:,
          tags:,
          request_options: {}
        ); end

        sig do
          params(
            limit: Integer,
            next_page: String,
            archive_filter: Symbol,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::CursorPage[Metronome::Models::Contracts::ProductListResponse])
        end
        def list(limit:, next_page:, archive_filter:, request_options: {}); end

        sig do
          params(
            params: T.any(Metronome::Models::Contracts::ProductArchiveParams, T::Hash[Symbol, T.anything]),
            product_id: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Contracts::ProductArchiveResponse)
        end
        def archive(params, product_id:, request_options: {}); end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end
