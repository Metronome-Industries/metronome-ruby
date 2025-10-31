# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerPreviewEventsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomerPreviewEventsParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        # Array of usage events to include in the preview calculation. Must contain at
        # least one event in `merge` mode.
        sig do
          returns(
            T::Array[MetronomeSDK::V1::CustomerPreviewEventsParams::Event]
          )
        end
        attr_accessor :events

        # Controls how the provided events are combined with existing usage data. Use
        # `replace` to calculate the preview as if these are the only events for the
        # customer, ignoring all historical usage. Use `merge` to combine these events
        # with the customer's existing usage. Defaults to `replace`.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::CustomerPreviewEventsParams::Mode::OrSymbol
            )
          )
        end
        attr_reader :mode

        sig do
          params(
            mode: MetronomeSDK::V1::CustomerPreviewEventsParams::Mode::OrSymbol
          ).void
        end
        attr_writer :mode

        # When `true`, line items with zero quantity are excluded from the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :skip_zero_qty_line_items

        sig { params(skip_zero_qty_line_items: T::Boolean).void }
        attr_writer :skip_zero_qty_line_items

        sig do
          params(
            customer_id: String,
            events:
              T::Array[
                MetronomeSDK::V1::CustomerPreviewEventsParams::Event::OrHash
              ],
            mode: MetronomeSDK::V1::CustomerPreviewEventsParams::Mode::OrSymbol,
            skip_zero_qty_line_items: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # Array of usage events to include in the preview calculation. Must contain at
          # least one event in `merge` mode.
          events:,
          # Controls how the provided events are combined with existing usage data. Use
          # `replace` to calculate the preview as if these are the only events for the
          # customer, ignoring all historical usage. Use `merge` to combine these events
          # with the customer's existing usage. Defaults to `replace`.
          mode: nil,
          # When `true`, line items with zero quantity are excluded from the response.
          skip_zero_qty_line_items: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              events:
                T::Array[MetronomeSDK::V1::CustomerPreviewEventsParams::Event],
              mode:
                MetronomeSDK::V1::CustomerPreviewEventsParams::Mode::OrSymbol,
              skip_zero_qty_line_items: T::Boolean,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Event < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::CustomerPreviewEventsParams::Event,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :event_type

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :properties

          sig { params(properties: T::Hash[Symbol, T.anything]).void }
          attr_writer :properties

          # RFC 3339 formatted. If not provided, the current time will be used.
          sig { returns(T.nilable(String)) }
          attr_reader :timestamp

          sig { params(timestamp: String).void }
          attr_writer :timestamp

          # Optional unique identifier for event deduplication. When provided, preview
          # events are automatically deduplicated against historical events from the past 34
          # days. Duplicate transaction IDs within the same request will return an error.
          sig { returns(T.nilable(String)) }
          attr_reader :transaction_id

          sig { params(transaction_id: String).void }
          attr_writer :transaction_id

          sig do
            params(
              event_type: String,
              properties: T::Hash[Symbol, T.anything],
              timestamp: String,
              transaction_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            event_type:,
            properties: nil,
            # RFC 3339 formatted. If not provided, the current time will be used.
            timestamp: nil,
            # Optional unique identifier for event deduplication. When provided, preview
            # events are automatically deduplicated against historical events from the past 34
            # days. Duplicate transaction IDs within the same request will return an error.
            transaction_id: nil
          )
          end

          sig do
            override.returns(
              {
                event_type: String,
                properties: T::Hash[Symbol, T.anything],
                timestamp: String,
                transaction_id: String
              }
            )
          end
          def to_hash
          end
        end

        # Controls how the provided events are combined with existing usage data. Use
        # `replace` to calculate the preview as if these are the only events for the
        # customer, ignoring all historical usage. Use `merge` to combine these events
        # with the customer's existing usage. Defaults to `replace`.
        module Mode
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::V1::CustomerPreviewEventsParams::Mode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REPLACE =
            T.let(
              :replace,
              MetronomeSDK::V1::CustomerPreviewEventsParams::Mode::TaggedSymbol
            )
          MERGE =
            T.let(
              :merge,
              MetronomeSDK::V1::CustomerPreviewEventsParams::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::CustomerPreviewEventsParams::Mode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
