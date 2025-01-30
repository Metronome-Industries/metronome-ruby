# typed: strong

module Metronome
  module Resources
    class Dashboards
      sig do
        params(
          params: T.any(Metronome::Models::DashboardGetEmbeddableURLParams, T::Hash[Symbol, T.anything]),
          customer_id: String,
          dashboard: Symbol,
          bm_group_key_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride],
          color_overrides: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride],
          dashboard_options: T::Array[Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption],
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::DashboardGetEmbeddableURLResponse)
      end
      def get_embeddable_url(
        params,
        customer_id:,
        dashboard:,
        bm_group_key_overrides:,
        color_overrides:,
        dashboard_options:,
        request_options: {}
      ); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
