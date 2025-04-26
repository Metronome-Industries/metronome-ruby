# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class NamedScheduleRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # ID of the rate card whose named schedule is to be retrieved
          sig { returns(String) }
          attr_accessor :rate_card_id

          # The identifier for the schedule to be retrieved
          sig { returns(String) }
          attr_accessor :schedule_name

          # If provided, at most one schedule segment will be returned (the one that covers
          # this date). If not provided, all segments will be returned.
          sig { returns(T.nilable(Time)) }
          attr_reader :covering_date

          sig { params(covering_date: Time).void }
          attr_writer :covering_date

          sig do
            params(
              rate_card_id: String,
              schedule_name: String,
              covering_date: Time,
              request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(
            # ID of the rate card whose named schedule is to be retrieved
            rate_card_id:,
            # The identifier for the schedule to be retrieved
            schedule_name:,
            # If provided, at most one schedule segment will be returned (the one that covers
            # this date). If not provided, all segments will be returned.
            covering_date: nil,
            request_options: {}
          ); end
          sig do
            override
              .returns(
                {
                  rate_card_id: String,
                  schedule_name: String,
                  covering_date: Time,
                  request_options: MetronomeSDK::RequestOptions
                }
              )
          end
          def to_hash; end
        end
      end
    end
  end
end
