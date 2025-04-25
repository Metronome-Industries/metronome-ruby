# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class NamedScheduleRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(T::Array[MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse::Data]) }
          attr_accessor :data

          sig do
            params(
              data: T::Array[
                T.any(
                  MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse::Data,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .returns(T.attached_class)
          end
          def self.new(data:); end

          sig do
            override
              .returns({data: T::Array[MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse::Data]})
          end
          def to_hash; end

          class Data < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(Time) }
            attr_accessor :starting_at

            sig { returns(T.anything) }
            attr_accessor :value

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig do
              params(starting_at: Time, value: T.anything, ending_before: Time).returns(T.attached_class)
            end
            def self.new(starting_at:, value:, ending_before: nil); end

            sig { override.returns({starting_at: Time, value: T.anything, ending_before: Time}) }
            def to_hash; end
          end
        end
      end
    end
  end
end
