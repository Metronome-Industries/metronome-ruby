# typed: strong

module Metronome
  module Models
    class AuditLogListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            ending_before: Time,
            limit: Integer,
            next_page: String,
            resource_id: String,
            resource_type: String,
            sort: Symbol,
            starting_on: Time
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig { returns(T.nilable(String)) }
      attr_reader :resource_id

      sig { params(resource_id: String).void }
      attr_writer :resource_id

      sig { returns(T.nilable(String)) }
      attr_reader :resource_type

      sig { params(resource_type: String).void }
      attr_writer :resource_type

      sig { returns(T.nilable(Symbol)) }
      attr_reader :sort

      sig { params(sort: Symbol).void }
      attr_writer :sort

      sig { returns(T.nilable(Time)) }
      attr_reader :starting_on

      sig { params(starting_on: Time).void }
      attr_writer :starting_on

      sig do
        params(
          ending_before: Time,
          limit: Integer,
          next_page: String,
          resource_id: String,
          resource_type: String,
          sort: Symbol,
          starting_on: Time,
          request_options: Metronome::RequestOpts
        ).void
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
      ); end

      sig { returns(Metronome::Models::AuditLogListParams::Shape) }
      def to_h; end

      class Sort < Metronome::Enum
        abstract!

        DATE_ASC = :date_asc
        DATE_DESC = :date_desc

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
