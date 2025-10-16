# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertResetParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Customers::AlertResetParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The Metronome ID of the threshold notification
          sig { returns(String) }
          attr_accessor :alert_id

          # The Metronome ID of the customer
          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            params(
              alert_id: String,
              customer_id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The Metronome ID of the threshold notification
            alert_id:,
            # The Metronome ID of the customer
            customer_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                alert_id: String,
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
