# typed: strong

module Metronome
  module Resources
    class Contracts
      class RateCards
        class NamedSchedules
          sig do
            params(
              contract_id: String,
              customer_id: String,
              schedule_name: String,
              covering_date: Time,
              request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveResponse)
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
              request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
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

          sig { params(client: Metronome::Client).void }
          def initialize(client:)
          end
        end
      end
    end
  end
end
