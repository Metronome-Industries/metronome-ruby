# typed: strong

module Metronome
  module Models
    module Customers
      class CreditUpdateEndDateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(Time) }
        attr_accessor :access_ending_before

        sig { returns(String) }
        attr_accessor :credit_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          params(
            access_ending_before: Time,
            credit_id: String,
            customer_id: String,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(access_ending_before:, credit_id:, customer_id:, request_options: {}); end

        sig do
          override.returns(
            {
              access_ending_before: Time,
              credit_id: String,
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
