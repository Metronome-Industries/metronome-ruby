# typed: strong

module Metronome
  module Models
    class UsageIngestParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(T::Array[Metronome::Models::UsageIngestParams::Usage]) }
      def usage
      end

      sig do
        params(_: T::Array[Metronome::Models::UsageIngestParams::Usage])
          .returns(T::Array[Metronome::Models::UsageIngestParams::Usage])
      end
      def usage=(_)
      end

      sig do
        params(
          usage: T::Array[Metronome::Models::UsageIngestParams::Usage],
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(usage:, request_options: {})
      end

      sig do
        override
          .returns(
            {usage: T::Array[Metronome::Models::UsageIngestParams::Usage], request_options: Metronome::RequestOptions}
          )
      end
      def to_hash
      end

      class Usage < Metronome::BaseModel
        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(String) }
        def event_type
        end

        sig { params(_: String).returns(String) }
        def event_type=(_)
        end

        sig { returns(String) }
        def timestamp
        end

        sig { params(_: String).returns(String) }
        def timestamp=(_)
        end

        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        def properties
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def properties=(_)
        end

        sig do
          params(
            customer_id: String,
            event_type: String,
            timestamp: String,
            transaction_id: String,
            properties: T::Hash[Symbol, T.anything]
          )
            .void
        end
        def initialize(customer_id:, event_type:, timestamp:, transaction_id:, properties: nil)
        end

        sig do
          override
            .returns(
              {
                customer_id: String,
                event_type: String,
                timestamp: String,
                transaction_id: String,
                properties: T::Hash[Symbol, T.anything]
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
