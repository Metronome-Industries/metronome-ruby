# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#preview_events
      class CustomerPreviewEventsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute events
        #   Array of usage events to include in the preview calculation. Must contain at
        #   least one event in `merge` mode.
        #
        #   @return [Array<MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Event>]
        required :events,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::CustomerPreviewEventsParams::Event] }

        # @!attribute mode
        #   Controls how the provided events are combined with existing usage data. Use
        #   `replace` to calculate the preview as if these are the only events for the
        #   customer, ignoring all historical usage. Use `merge` to combine these events
        #   with the customer's existing usage. Defaults to `replace`.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Mode, nil]
        optional :mode, enum: -> { MetronomeSDK::V1::CustomerPreviewEventsParams::Mode }

        # @!attribute skip_zero_qty_line_items
        #   When `true`, line items with zero quantity are excluded from the response.
        #
        #   @return [Boolean, nil]
        optional :skip_zero_qty_line_items, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(customer_id:, events:, mode: nil, skip_zero_qty_line_items: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CustomerPreviewEventsParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param events [Array<MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Event>] Array of usage events to include in the preview calculation. Must contain at lea
        #
        #   @param mode [Symbol, MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Mode] Controls how the provided events are combined with existing usage data. Use `rep
        #
        #   @param skip_zero_qty_line_items [Boolean] When `true`, line items with zero quantity are excluded from the response.
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class Event < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute event_type
          #
          #   @return [String]
          required :event_type, String

          # @!attribute properties
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :properties, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute timestamp
          #   RFC 3339 formatted. If not provided, the current time will be used.
          #
          #   @return [String, nil]
          optional :timestamp, String

          # @!attribute transaction_id
          #   Optional unique identifier for event deduplication. When provided, preview
          #   events are automatically deduplicated against historical events from the past 34
          #   days. Duplicate transaction IDs within the same request will return an error.
          #
          #   @return [String, nil]
          optional :transaction_id, String

          # @!method initialize(event_type:, properties: nil, timestamp: nil, transaction_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Event} for more details.
          #
          #   @param event_type [String]
          #
          #   @param properties [Hash{Symbol=>Object}]
          #
          #   @param timestamp [String] RFC 3339 formatted. If not provided, the current time will be used.
          #
          #   @param transaction_id [String] Optional unique identifier for event deduplication. When provided, preview event
        end

        # Controls how the provided events are combined with existing usage data. Use
        # `replace` to calculate the preview as if these are the only events for the
        # customer, ignoring all historical usage. Use `merge` to combine these events
        # with the customer's existing usage. Defaults to `replace`.
        module Mode
          extend MetronomeSDK::Internal::Type::Enum

          REPLACE = :replace
          MERGE = :merge

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
