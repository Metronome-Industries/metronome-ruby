# typed: strong

module Metronome
  module Models
    module Contracts
      module RateCards
        class NamedScheduleUpdateParams < Metronome::BaseModel
          extend Metronome::RequestParameters::Converter
          include Metronome::RequestParameters

          Shape = T.type_alias do
            T.all(
              {
                contract_id: String,
                customer_id: String,
                schedule_name: String,
                starting_at: Time,
                value: T.anything,
                ending_before: Time
              },
              Metronome::RequestParameters::Shape
            )
          end

          sig { returns(String) }
          attr_accessor :contract_id

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(String) }
          attr_accessor :schedule_name

          sig { returns(Time) }
          attr_accessor :starting_at

          sig { returns(T.anything) }
          attr_accessor :value

          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig do
            params(
              contract_id: String,
              customer_id: String,
              schedule_name: String,
              starting_at: Time,
              value: T.anything,
              ending_before: Time,
              request_options: Metronome::RequestOpts
            ).void
          end
          def initialize(
            contract_id:,
            customer_id:,
            schedule_name:,
            starting_at:,
            value:,
            ending_before: nil,
            request_options: {}
          )
          end

          sig { returns(Metronome::Models::Contracts::RateCards::NamedScheduleUpdateParams::Shape) }
          def to_h; end
        end
      end
    end
  end
end
