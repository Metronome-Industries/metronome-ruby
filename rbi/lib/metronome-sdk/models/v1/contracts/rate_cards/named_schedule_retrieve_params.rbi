# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class NamedScheduleRetrieveParams < MetronomeSDK::BaseModel
            extend MetronomeSDK::RequestParameters::Converter
            include MetronomeSDK::RequestParameters

            sig { returns(String) }
            def contract_id
            end

            sig { params(_: String).returns(String) }
            def contract_id=(_)
            end

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

            sig { returns(T.nilable(Time)) }
            def covering_date
            end

            sig { params(_: Time).returns(Time) }
            def covering_date=(_)
            end

            sig do
              params(
                contract_id: String,
                customer_id: String,
                schedule_name: String,
                covering_date: Time,
                request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .void
            end
            def initialize(
              contract_id:,
              customer_id:,
              schedule_name:,
              covering_date: nil,
              request_options: {}
            )
            end

            sig do
              override
                .returns(
                  {
                    contract_id: String,
                    customer_id: String,
                    schedule_name: String,
                    covering_date: Time,
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
end
