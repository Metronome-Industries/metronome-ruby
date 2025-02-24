# typed: strong

module Metronome
  module Models
    class PlanListCustomersParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def plan_id
      end

      sig { params(_: String).returns(String) }
      def plan_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_page
      end

      sig { params(_: String).returns(String) }
      def next_page=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          plan_id: String,
          limit: Integer,
          next_page: String,
          status: Symbol,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(plan_id:, limit: nil, next_page: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              plan_id: String,
              limit: Integer,
              next_page: String,
              status: Symbol,
              request_options: Metronome::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Status < Metronome::Enum
        abstract!

        ALL = :all
        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
