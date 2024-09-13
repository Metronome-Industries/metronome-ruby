# frozen_string_literal: true

module Metronome
  module Resources
    class Dashboards
      def initialize(client:)
        @client = client
      end

      # Retrieve an embeddable dashboard url for a customer. The dashboard can be
      #   embedded using an iframe in a website. This will show information such as usage
      #   data and customer invoices.
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :customer_id
      # @option params [Symbol] :dashboard The type of dashboard to retrieve.
      # @option params [Array<BmGroupKeyOverride>] :bm_group_key_overrides Optional list of billable metric group key overrides
      # @option params [Array<ColorOverride>] :color_overrides Optional list of colors to override
      # @option params [Array<DashboardOption>] :dashboard_options Optional dashboard specific options
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::Models::DashboardGetEmbeddableURLResponse]
      def get_embeddable_url(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/dashboards/getEmbeddableUrl"
        req[:body] = params
        req[:model] = Metronome::Models::DashboardGetEmbeddableURLResponse
        @client.request(req, opts)
      end
    end
  end
end
