# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceListBreakdownsParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(Time) }
        def ending_before
        end

        sig { params(_: Time).returns(Time) }
        def ending_before=(_)
        end

        sig { returns(Time) }
        def starting_on
        end

        sig { params(_: Time).returns(Time) }
        def starting_on=(_)
        end

        sig { returns(T.nilable(String)) }
        def credit_type_id
        end

        sig { params(_: String).returns(String) }
        def credit_type_id=(_)
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

        sig { returns(T.nilable(T::Boolean)) }
        def skip_zero_qty_line_items
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def skip_zero_qty_line_items=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def sort
        end

        sig { params(_: Symbol).returns(Symbol) }
        def sort=(_)
        end

        sig { returns(T.nilable(String)) }
        def status
        end

        sig { params(_: String).returns(String) }
        def status=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def window_size
        end

        sig { params(_: Symbol).returns(Symbol) }
        def window_size=(_)
        end

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
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
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
        )
        end

        sig do
          override.returns(
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
              window_size: Symbol,
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

        class WindowSize < Metronome::Enum
          abstract!

          HOUR = :HOUR
          DAY = :DAY

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
