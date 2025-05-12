# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceListBreakdownsParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :customer_id

          # RFC 3339 timestamp. Breakdowns will only be returned for time windows that end
          # on or before this time.
          sig { returns(Time) }
          attr_accessor :ending_before

          # RFC 3339 timestamp. Breakdowns will only be returned for time windows that start
          # on or after this time.
          sig { returns(Time) }
          attr_accessor :starting_on

          # Only return invoices for the specified credit type
          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          # Max number of results that should be returned. For daily breakdowns, the
          # response can return up to 35 days worth of breakdowns. For hourly breakdowns,
          # the response can return up to 24 hours. If there are more results, a cursor to
          # the next page is returned.
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
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::Sort::OrSymbol
              )
            )
          end
          attr_reader :sort

          sig do
            params(
              sort:
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::Sort::OrSymbol
            ).void
          end
          attr_writer :sort

          # Invoice status, e.g. DRAFT or FINALIZED
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # The granularity of the breakdowns to return. Defaults to day.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::WindowSize::OrSymbol
              )
            )
          end
          attr_reader :window_size

          sig do
            params(
              window_size:
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::WindowSize::OrSymbol
            ).void
          end
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
              sort:
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::Sort::OrSymbol,
              status: String,
              window_size:
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::WindowSize::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            customer_id:,
            # RFC 3339 timestamp. Breakdowns will only be returned for time windows that end
            # on or before this time.
            ending_before:,
            # RFC 3339 timestamp. Breakdowns will only be returned for time windows that start
            # on or after this time.
            starting_on:,
            # Only return invoices for the specified credit type
            credit_type_id: nil,
            # Max number of results that should be returned. For daily breakdowns, the
            # response can return up to 35 days worth of breakdowns. For hourly breakdowns,
            # the response can return up to 24 hours. If there are more results, a cursor to
            # the next page is returned.
            limit: nil,
            # Cursor that indicates where the next page of results should start.
            next_page: nil,
            # If set, all zero quantity line items will be filtered out of the response
            skip_zero_qty_line_items: nil,
            # Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
            # date_asc.
            sort: nil,
            # Invoice status, e.g. DRAFT or FINALIZED
            status: nil,
            # The granularity of the breakdowns to return. Defaults to day.
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
                sort:
                  MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::Sort::OrSymbol,
                status: String,
                window_size:
                  MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::WindowSize::OrSymbol,
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
                  MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::Sort
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DATE_ASC =
              T.let(
                :date_asc,
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::Sort::TaggedSymbol
              )
            DATE_DESC =
              T.let(
                :date_desc,
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::Sort::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::Sort::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The granularity of the breakdowns to return. Defaults to day.
          module WindowSize
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::WindowSize
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HOUR =
              T.let(
                :HOUR,
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::WindowSize::TaggedSymbol
              )
            DAY =
              T.let(
                :DAY,
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::WindowSize::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::WindowSize::TaggedSymbol
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
