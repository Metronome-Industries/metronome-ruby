# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceListParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Customers::InvoiceListParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :customer_id

          # Only return invoices for the specified credit type
          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          # RFC 3339 timestamp (exclusive). Invoices will only be returned for billing
          # periods that end before this time.
          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          # Max number of results that should be returned
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Cursor that indicates where the next page of results should start.
          sig { returns(T.nilable(String)) }
          attr_reader :next_page

          sig { params(next_page: String).void }
          attr_writer :next_page

          # If set, all zero quantity line items will be filtered out of the response
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :skip_zero_qty_line_items

          sig { params(skip_zero_qty_line_items: T::Boolean).void }
          attr_writer :skip_zero_qty_line_items

          # Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
          # date_asc.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::Customers::InvoiceListParams::Sort::OrSymbol
              )
            )
          end
          attr_reader :sort

          sig do
            params(
              sort:
                MetronomeSDK::V1::Customers::InvoiceListParams::Sort::OrSymbol
            ).void
          end
          attr_writer :sort

          # RFC 3339 timestamp (inclusive). Invoices will only be returned for billing
          # periods that start at or after this time.
          sig { returns(T.nilable(Time)) }
          attr_reader :starting_on

          sig { params(starting_on: Time).void }
          attr_writer :starting_on

          # Invoice status, e.g. DRAFT, FINALIZED, or VOID
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              customer_id: String,
              credit_type_id: String,
              ending_before: Time,
              limit: Integer,
              next_page: String,
              skip_zero_qty_line_items: T::Boolean,
              sort:
                MetronomeSDK::V1::Customers::InvoiceListParams::Sort::OrSymbol,
              starting_on: Time,
              status: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            customer_id:,
            # Only return invoices for the specified credit type
            credit_type_id: nil,
            # RFC 3339 timestamp (exclusive). Invoices will only be returned for billing
            # periods that end before this time.
            ending_before: nil,
            # Max number of results that should be returned
            limit: nil,
            # Cursor that indicates where the next page of results should start.
            next_page: nil,
            # If set, all zero quantity line items will be filtered out of the response
            skip_zero_qty_line_items: nil,
            # Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
            # date_asc.
            sort: nil,
            # RFC 3339 timestamp (inclusive). Invoices will only be returned for billing
            # periods that start at or after this time.
            starting_on: nil,
            # Invoice status, e.g. DRAFT, FINALIZED, or VOID
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                customer_id: String,
                credit_type_id: String,
                ending_before: Time,
                limit: Integer,
                next_page: String,
                skip_zero_qty_line_items: T::Boolean,
                sort:
                  MetronomeSDK::V1::Customers::InvoiceListParams::Sort::OrSymbol,
                starting_on: Time,
                status: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
          # date_asc.
          module Sort
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Customers::InvoiceListParams::Sort
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DATE_ASC =
              T.let(
                :date_asc,
                MetronomeSDK::V1::Customers::InvoiceListParams::Sort::TaggedSymbol
              )
            DATE_DESC =
              T.let(
                :date_desc,
                MetronomeSDK::V1::Customers::InvoiceListParams::Sort::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Customers::InvoiceListParams::Sort::TaggedSymbol
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
end
