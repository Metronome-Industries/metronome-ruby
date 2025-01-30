# typed: strong

module Metronome
  module Models
    module Contracts
      module RateCards
        class NamedScheduleRetrieveParams < Metronome::BaseModel
          extend Metronome::RequestParameters::Converter
          include Metronome::RequestParameters

          Shape = T.type_alias do
            T.all(
              {contract_id: String, customer_id: String, schedule_name: String, covering_date: Time},
              Metronome::RequestParameters::Shape
            )
          end

          sig { returns(String) }
          attr_accessor :contract_id

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(String) }
          attr_accessor :schedule_name

          sig { returns(T.nilable(Time)) }
          attr_reader :covering_date

          sig { params(covering_date: Time).void }
          attr_writer :covering_date

          sig do
            params(
              contract_id: String,
              customer_id: String,
              schedule_name: String,
              covering_date: Time,
              request_options: Metronome::RequestOpts
            ).void
          end
          def initialize(contract_id:, customer_id:, schedule_name:, covering_date: nil, request_options: {})
          end

          sig { returns(Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveParams::Shape) }
          def to_h; end
        end
      end
    end
  end
end
