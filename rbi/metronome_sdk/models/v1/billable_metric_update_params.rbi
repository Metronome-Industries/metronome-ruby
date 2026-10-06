# typed: strong

module MetronomeSDK
  module Models
    module V1
      class BillableMetricUpdateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::BillableMetricUpdateParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :billable_metric_id

        # The new name of the metric
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            billable_metric_id: String,
            name: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          billable_metric_id:,
          # The new name of the metric
          name:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              billable_metric_id: String,
              name: String,
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
