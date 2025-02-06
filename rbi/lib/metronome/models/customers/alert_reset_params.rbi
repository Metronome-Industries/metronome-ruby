# typed: strong

module Metronome
  module Models
    module Customers
      class AlertResetParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        attr_accessor :alert_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          params(
            alert_id: String,
            customer_id: String,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(alert_id:, customer_id:, request_options: {}); end

        sig do
          override.returns(
            {
              alert_id: String,
              customer_id: String,
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
