# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanListCustomersParams < MetronomeSDK::Internal::Type::BaseModel
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

        # Status of customers on a given plan. Defaults to `active`.
        #
        # - `all` - Return current, past, and upcoming customers of the plan.
        # - `active` - Return current customers of the plan.
        # - `ended` - Return past customers of the plan.
        # - `upcoming` - Return upcoming customers of the plan.
        #
        # Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
        # **Note:** `ended,upcoming` combination is not yet supported.
        sig { returns(T.nilable(MetronomeSDK::Models::V1::PlanListCustomersParams::Status::OrSymbol)) }
        attr_reader :status

        sig { params(status: MetronomeSDK::Models::V1::PlanListCustomersParams::Status::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            plan_id: String,
            limit: Integer,
            next_page: String,
            status: MetronomeSDK::Models::V1::PlanListCustomersParams::Status::OrSymbol,
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
          # Status of customers on a given plan. Defaults to `active`.
          #
          # - `all` - Return current, past, and upcoming customers of the plan.
          # - `active` - Return current customers of the plan.
          # - `ended` - Return past customers of the plan.
          # - `upcoming` - Return upcoming customers of the plan.
          #
          # Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
          # **Note:** `ended,upcoming` combination is not yet supported.
          status: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                plan_id: String,
                limit: Integer,
                next_page: String,
                status: MetronomeSDK::Models::V1::PlanListCustomersParams::Status::OrSymbol,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end

        # Status of customers on a given plan. Defaults to `active`.
        #
        # - `all` - Return current, past, and upcoming customers of the plan.
        # - `active` - Return current customers of the plan.
        # - `ended` - Return past customers of the plan.
        # - `upcoming` - Return upcoming customers of the plan.
        #
        # Multiple statuses can be OR'd together using commas, e.g. `active,ended`.
        # **Note:** `ended,upcoming` combination is not yet supported.
        module Status
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::PlanListCustomersParams::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL = T.let(:all, MetronomeSDK::Models::V1::PlanListCustomersParams::Status::TaggedSymbol)
          ACTIVE = T.let(:active, MetronomeSDK::Models::V1::PlanListCustomersParams::Status::TaggedSymbol)
          ENDED = T.let(:ended, MetronomeSDK::Models::V1::PlanListCustomersParams::Status::TaggedSymbol)
          UPCOMING = T.let(:upcoming, MetronomeSDK::Models::V1::PlanListCustomersParams::Status::TaggedSymbol)

          sig { override.returns(T::Array[MetronomeSDK::Models::V1::PlanListCustomersParams::Status::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
