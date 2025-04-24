# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class NamedScheduleUpdateParams < MetronomeSDK::BaseModel
          extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig { returns(String) }
          def schedule_name
          end

          sig { params(_: String).returns(String) }
          def schedule_name=(_)
          end

          sig { returns(Time) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T.anything) }
          def value
          end

          sig { params(_: T.anything).returns(T.anything) }
          def value=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
          end

          sig do
            params(
              customer_id: String,
              schedule_name: String,
              starting_at: Time,
              value: T.anything,
              ending_before: Time,
              request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(
            customer_id:,
            schedule_name:,
            starting_at:,
            value:,
            ending_before: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  customer_id: String,
                  schedule_name: String,
                  starting_at: Time,
                  value: T.anything,
                  ending_before: Time,
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
