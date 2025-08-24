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
        #
        #   @return [Array<MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Event>]
        required :events,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::CustomerPreviewEventsParams::Event] }

        # @!attribute mode
        #   If set to "replace", the preview will be generated as if those were the only
        #   events for the specified customer. If set to "merge", the events will be merged
        #   with any existing events for the specified customer. Defaults to "replace".
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Mode, nil]
        optional :mode, enum: -> { MetronomeSDK::V1::CustomerPreviewEventsParams::Mode }

        # @!attribute skip_zero_qty_line_items
        #   If set, all zero quantity line items will be filtered out of the response.
        #
        #   @return [Boolean, nil]
        optional :skip_zero_qty_line_items, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(customer_id:, events:, mode: nil, skip_zero_qty_line_items: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CustomerPreviewEventsParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param events [Array<MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Event>]
        #
        #   @param mode [Symbol, MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Mode] If set to "replace", the preview will be generated as if those were the only eve
        #
        #   @param skip_zero_qty_line_items [Boolean] If set, all zero quantity line items will be filtered out of the response.
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class Event < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute event_type
          #
          #   @return [String]
          required :event_type, String

          # @!attribute customer_id
          #   This has no effect for preview events, but may be set for consistency with Event
          #   objects. They will be processed even if they do not match the customer's ID or
          #   ingest aliases.
          #
          #   @return [String, nil]
          optional :customer_id, String

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
          #   This has no effect for preview events, but may be set for consistency with Event
          #   objects. Duplicate transaction_ids are NOT filtered out, even within the same
          #   request.
          #
          #   @return [String, nil]
          optional :transaction_id, String

          # @!method initialize(event_type:, customer_id: nil, properties: nil, timestamp: nil, transaction_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::CustomerPreviewEventsParams::Event} for more details.
          #
          #   @param event_type [String]
          #
          #   @param customer_id [String] This has no effect for preview events, but may be set for consistency with Event
          #
          #   @param properties [Hash{Symbol=>Object}]
          #
          #   @param timestamp [String] RFC 3339 formatted. If not provided, the current time will be used.
          #
          #   @param transaction_id [String] This has no effect for preview events, but may be set for consistency with Event
        end

        # If set to "replace", the preview will be generated as if those were the only
        # events for the specified customer. If set to "merge", the events will be merged
        # with any existing events for the specified customer. Defaults to "replace".
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
