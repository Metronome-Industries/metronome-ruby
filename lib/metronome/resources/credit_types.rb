# frozen_string_literal: true

module Metronome
  module Resources
    class CreditTypes
      def initialize(client:)
        @client = client
      end

      # List all pricing units (known in the API by the legacy term "credit types").
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :limit Max number of results that should be returned
      # @option params [String] :next_page Cursor that indicates where the next page of results should start.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::Models::CreditTypeListResponse]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/credit-types/list"
        req[:query] = params
        req[:model] = Metronome::Models::CreditTypeListResponse
        @client.request(req, opts)
      end
    end
  end
end
