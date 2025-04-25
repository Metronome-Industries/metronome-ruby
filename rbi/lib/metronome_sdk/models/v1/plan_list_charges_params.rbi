# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanListChargesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :plan_id

        # Max number of results that should be returned
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Cursor that indicates where the next page of results should start.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig do
          params(
            plan_id: String,
            limit: Integer,
            next_page: String,
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          plan_id:,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                plan_id: String,
                limit: Integer,
                next_page: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
