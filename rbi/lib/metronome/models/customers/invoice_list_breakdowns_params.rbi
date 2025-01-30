# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceListBreakdownsParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              customer_id: String,
              ending_before: Time,
              starting_on: Time,
              credit_type_id: String,
              limit: Integer,
              next_page: String,
              skip_zero_qty_line_items: T::Boolean,
              sort: Symbol,
              status: String,
              window_size: Symbol
            },
            Metronome::RequestParameters::Shape
          )
        end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(Time) }
        attr_accessor :ending_before

        sig { returns(Time) }
        attr_accessor :starting_on

        sig { returns(T.nilable(String)) }
        attr_reader :credit_type_id

        sig { params(credit_type_id: String).void }
        attr_writer :credit_type_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :skip_zero_qty_line_items

        sig { params(skip_zero_qty_line_items: T::Boolean).void }
        attr_writer :skip_zero_qty_line_items

        sig { returns(T.nilable(Symbol)) }
        attr_reader :sort

        sig { params(sort: Symbol).void }
        attr_writer :sort

        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig { returns(T.nilable(Symbol)) }
        attr_reader :window_size

        sig { params(window_size: Symbol).void }
        attr_writer :window_size

        sig do
          params(
            customer_id: String,
            ending_before: Time,
            starting_on: Time,
            credit_type_id: String,
            limit: Integer,
            next_page: String,
            skip_zero_qty_line_items: T::Boolean,
            sort: Symbol,
            status: String,
            window_size: Symbol,
            request_options: Metronome::RequestOpts
          ).void
        end
        def initialize(
          customer_id:,
          ending_before:,
          starting_on:,
          credit_type_id: nil,
          limit: nil,
          next_page: nil,
          skip_zero_qty_line_items: nil,
          sort: nil,
          status: nil,
          window_size: nil,
          request_options: {}
        ); end

        sig { returns(Metronome::Models::Customers::InvoiceListBreakdownsParams::Shape) }
        def to_h; end

        class Sort < Metronome::Enum
          abstract!

          DATE_ASC = :date_asc
          DATE_DESC = :date_desc

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class WindowSize < Metronome::Enum
          abstract!

          HOUR = :HOUR
          DAY = :DAY

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
