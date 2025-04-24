# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class NamedSchedules
          sig do
            params(
              customer_id: String,
              schedule_name: String,
              covering_date: Time,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse)
          end
          def retrieve(customer_id:, schedule_name:, covering_date: nil, request_options: {})
          end

          sig do
            params(
              customer_id: String,
              schedule_name: String,
              starting_at: Time,
              value: T.anything,
              ending_before: Time,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .void
          end
          def update(
            customer_id:,
            schedule_name:,
            starting_at:,
            value:,
            ending_before: nil,
            request_options: {}
          )
          end

          sig { params(client: MetronomeSDK::Client).void }
          def initialize(client:)
          end
        end
      end
    end
  end
end
