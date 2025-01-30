# typed: strong

module Metronome
  module Models
    module Customers
      class CreditUpdateEndDateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all(
            {access_ending_before: Time, credit_id: String, customer_id: String},
            Metronome::RequestParameters::Shape
          )
        end

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
            request_options: Metronome::RequestOpts
          ).void
        end
        def initialize(access_ending_before:, credit_id:, customer_id:, request_options: {}); end

        sig { returns(Metronome::Models::Customers::CreditUpdateEndDateParams::Shape) }
        def to_h; end
      end
    end
  end
end
