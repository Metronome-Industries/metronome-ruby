# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PaymentListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::PaymentListParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :invoice_id

        # The maximum number of payments to return. Defaults to 25.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # The next page token from a previous response.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V1::PaymentStatus::OrSymbol])
          )
        end
        attr_reader :statuses

        sig do
          params(
            statuses: T::Array[MetronomeSDK::V1::PaymentStatus::OrSymbol]
          ).void
        end
        attr_writer :statuses

        sig do
          params(
            customer_id: String,
            invoice_id: String,
            limit: Integer,
            next_page: String,
            statuses: T::Array[MetronomeSDK::V1::PaymentStatus::OrSymbol],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          invoice_id:,
          # The maximum number of payments to return. Defaults to 25.
          limit: nil,
          # The next page token from a previous response.
          next_page: nil,
          statuses: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              invoice_id: String,
              limit: Integer,
              next_page: String,
              statuses: T::Array[MetronomeSDK::V1::PaymentStatus::OrSymbol],
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
