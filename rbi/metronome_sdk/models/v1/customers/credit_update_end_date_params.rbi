# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CreditUpdateEndDateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          # RFC 3339 timestamp indicating when access to the credit will end and it will no
          # longer be possible to draw it down (exclusive).
          sig { returns(Time) }
          attr_accessor :access_ending_before

          # ID of the commit to update
          sig { returns(String) }
          attr_accessor :credit_id

          # ID of the customer whose credit is to be updated
          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            params(
              access_ending_before: Time,
              credit_id: String,
              customer_id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # RFC 3339 timestamp indicating when access to the credit will end and it will no
            # longer be possible to draw it down (exclusive).
            access_ending_before:,
            # ID of the commit to update
            credit_id:,
            # ID of the customer whose credit is to be updated
            customer_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                access_ending_before: Time,
                credit_id: String,
                customer_id: String,
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
