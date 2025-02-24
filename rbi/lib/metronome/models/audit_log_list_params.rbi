# typed: strong

module Metronome
  module Models
    class AuditLogListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(T.nilable(Time)) }
      def ending_before
      end

      sig { params(_: Time).returns(Time) }
      def ending_before=(_)
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

      sig { returns(T.nilable(String)) }
      def resource_id
      end

      sig { params(_: String).returns(String) }
      def resource_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def resource_type
      end

      sig { params(_: String).returns(String) }
      def resource_type=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def sort
      end

      sig { params(_: Symbol).returns(Symbol) }
      def sort=(_)
      end

      sig { returns(T.nilable(Time)) }
      def starting_on
      end

      sig { params(_: Time).returns(Time) }
      def starting_on=(_)
      end

      sig do
        params(
          ending_before: Time,
          limit: Integer,
          next_page: String,
          resource_id: String,
          resource_type: String,
          sort: Symbol,
          starting_on: Time,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        ending_before: nil,
        limit: nil,
        next_page: nil,
        resource_id: nil,
        resource_type: nil,
        sort: nil,
        starting_on: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              ending_before: Time,
              limit: Integer,
              next_page: String,
              resource_id: String,
              resource_type: String,
              sort: Symbol,
              starting_on: Time,
              request_options: Metronome::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Sort < Metronome::Enum
        abstract!

        DATE_ASC = :date_asc
        DATE_DESC = :date_desc

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
