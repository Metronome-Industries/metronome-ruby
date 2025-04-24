# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CreditUpdateEndDateParams < MetronomeSDK::BaseModel
          extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          sig { returns(Time) }
          def access_ending_before
          end

          sig { params(_: Time).returns(Time) }
          def access_ending_before=(_)
          end

          sig { returns(String) }
          def credit_id
          end

          sig { params(_: String).returns(String) }
          def credit_id=(_)
          end

          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig do
            params(
              access_ending_before: Time,
              credit_id: String,
              customer_id: String,
              request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(access_ending_before:, credit_id:, customer_id:, request_options: {})
          end

          sig do
            override
              .returns(
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
