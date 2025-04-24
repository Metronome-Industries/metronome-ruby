# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          class NamedSchedules
            sig do
              params(
                contract_id: String,
                customer_id: String,
                schedule_name: String,
                covering_date: Time,
                request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveResponse)
            end
            def retrieve(contract_id:, customer_id:, schedule_name:, covering_date: nil, request_options: {})
            end

            sig do
              params(
                contract_id: String,
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
              contract_id:,
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
end
