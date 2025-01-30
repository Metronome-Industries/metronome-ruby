# typed: strong

module Metronome
  module Models
    class UsageIngestParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {usage: T::Array[Metronome::Models::UsageIngestParams::Usage]},
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(T::Array[Metronome::Models::UsageIngestParams::Usage]) }
      attr_accessor :usage

      sig do
        params(
          usage: T::Array[Metronome::Models::UsageIngestParams::Usage],
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(usage:, request_options: {}); end

      sig { returns(Metronome::Models::UsageIngestParams::Shape) }
      def to_h; end

      class Usage < Metronome::BaseModel
        Shape = T.type_alias do
          {
            customer_id: String,
            event_type: String,
            timestamp: String,
            transaction_id: String,
            properties: T::Hash[Symbol, T.anything]
          }
        end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :event_type

        sig { returns(String) }
        attr_accessor :timestamp

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :properties

        sig { params(properties: T::Hash[Symbol, T.anything]).void }
        attr_writer :properties

        sig do
          params(
            customer_id: String,
            event_type: String,
            timestamp: String,
            transaction_id: String,
            properties: T::Hash[Symbol, T.anything]
          ).void
        end
        def initialize(customer_id:, event_type:, timestamp:, transaction_id:, properties: nil); end

        sig { returns(Metronome::Models::UsageIngestParams::Usage::Shape) }
        def to_h; end
      end
    end
  end
end
