# typed: strong

module Metronome
  module Resources
    class Alerts
      sig do
        params(
          params: T.any(Metronome::Models::AlertCreateParams, T::Hash[Symbol, T.anything]),
          alert_type: Symbol,
          name: String,
          threshold: Float,
          billable_metric_id: String,
          credit_grant_type_filters: T::Array[String],
          credit_type_id: String,
          custom_field_filters: T::Array[Metronome::Models::AlertCreateParams::CustomFieldFilter],
          customer_id: String,
          evaluate_on_create: T::Boolean,
          group_key_filter: Metronome::Models::AlertCreateParams::GroupKeyFilter,
          invoice_types_filter: T::Array[String],
          plan_id: String,
          uniqueness_key: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::AlertCreateResponse)
      end
      def create(
        params,
        alert_type:,
        name:,
        threshold:,
        billable_metric_id:,
        credit_grant_type_filters:,
        credit_type_id:,
        custom_field_filters:,
        customer_id:,
        evaluate_on_create:,
        group_key_filter:,
        invoice_types_filter:,
        plan_id:,
        uniqueness_key:,
        request_options: {}
      ); end

      sig do
        params(
          params: T.any(Metronome::Models::AlertArchiveParams, T::Hash[Symbol, T.anything]),
          id: String,
          release_uniqueness_key: T::Boolean,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::AlertArchiveResponse)
      end
      def archive(params, id:, release_uniqueness_key:, request_options: {}); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
