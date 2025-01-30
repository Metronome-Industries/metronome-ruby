# typed: strong

module Metronome
  module Resources
    class Contracts
      class RateCards
        class NamedSchedules
          sig do
            params(
              params: T.any(
                Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveParams,
                T::Hash[Symbol, T.anything]
              ),
              contract_id: String,
              customer_id: String,
              schedule_name: String,
              covering_date: Time,
              request_options: Metronome::RequestOpts
            ).returns(Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveResponse)
          end
          def retrieve(
            params,
            contract_id:,
            customer_id:,
            schedule_name:,
            covering_date:,
            request_options: {}
          )
          end

          sig do
            params(
              params: T.any(
                Metronome::Models::Contracts::RateCards::NamedScheduleUpdateParams,
                T::Hash[Symbol, T.anything]
              ),
              contract_id: String,
              customer_id: String,
              schedule_name: String,
              starting_at: Time,
              value: T.anything,
              ending_before: Time,
              request_options: Metronome::RequestOpts
            ).returns(NilClass)
          end
          def update(
            params,
            contract_id:,
            customer_id:,
            schedule_name:,
            starting_at:,
            value:,
            ending_before:,
            request_options: {}
          ); end

          sig { params(client: Metronome::Client).void }
          def initialize(client:); end
        end
      end
    end
  end
end
