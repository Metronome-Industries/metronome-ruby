# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class NamedScheduleRetrieveResponse < MetronomeSDK::BaseModel
          sig { returns(T::Array[MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse::Data]) }
          def data
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse::Data])
              .returns(T::Array[MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse::Data])
          end
          def data=(_)
          end

          sig { params(data: T::Array[MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse::Data]).void }
          def initialize(data:)
          end

          sig do
            override
              .returns({data: T::Array[MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse::Data]})
          end
          def to_hash
          end

          class Data < MetronomeSDK::BaseModel
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

            sig { params(starting_at: Time, value: T.anything, ending_before: Time).void }
            def initialize(starting_at:, value:, ending_before: nil)
            end

            sig { override.returns({starting_at: Time, value: T.anything, ending_before: Time}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
