# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceListParams < MetronomeSDK::BaseModel
          extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def credit_type_id
          end

          sig { params(_: String).returns(String) }
          def credit_type_id=(_)
          end

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

          sig { returns(T.nilable(Time)) }
          def starting_on
          end

          sig { params(_: Time).returns(Time) }
          def starting_on=(_)
          end

          sig { returns(T.nilable(String)) }
          def status
          end

          sig { params(_: String).returns(String) }
          def status=(_)
          end

          sig do
            params(
              customer_id: String,
              credit_type_id: String,
              ending_before: Time,
              limit: Integer,
              next_page: String,
              skip_zero_qty_line_items: T::Boolean,
              sort: Symbol,
              starting_on: Time,
              status: String,
              request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(
            customer_id:,
            credit_type_id: nil,
            ending_before: nil,
            limit: nil,
            next_page: nil,
            skip_zero_qty_line_items: nil,
            sort: nil,
            starting_on: nil,
            status: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  customer_id: String,
                  credit_type_id: String,
                  ending_before: Time,
                  limit: Integer,
                  next_page: String,
                  skip_zero_qty_line_items: T::Boolean,
                  sort: Symbol,
                  starting_on: Time,
                  status: String,
                  request_options: MetronomeSDK::RequestOptions
                }
              )
          end
          def to_hash
          end

          class Sort < MetronomeSDK::Enum
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
  end
end
