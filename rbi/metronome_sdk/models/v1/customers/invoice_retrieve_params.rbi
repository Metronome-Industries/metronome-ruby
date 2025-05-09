# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(String) }
          attr_accessor :invoice_id

          # If set, all zero quantity line items will be filtered out of the response
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :skip_zero_qty_line_items

          sig { params(skip_zero_qty_line_items: T::Boolean).void }
          attr_writer :skip_zero_qty_line_items

          sig do
            params(
              customer_id: String,
              invoice_id: String,
              skip_zero_qty_line_items: T::Boolean,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            customer_id:,
            invoice_id:,
            # If set, all zero quantity line items will be filtered out of the response
            skip_zero_qty_line_items: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                customer_id: String,
                invoice_id: String,
                skip_zero_qty_line_items: T::Boolean,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
