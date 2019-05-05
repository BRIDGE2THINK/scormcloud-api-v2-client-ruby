=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0 beta

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.3

=end

require 'uri'

module RusticiSoftwareCloudV2
  class PingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get back a message indicating that the API is working.
    # @param [Hash] opts the optional parameters
    # @return [PingSchema]
    def ping_app_id(opts = {})
      data, _status_code, _headers = ping_app_id_with_http_info(opts)
      data
    end

    # Get back a message indicating that the API is working.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PingSchema, Fixnum, Hash)>] PingSchema data, response status code and response headers
    def ping_app_id_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PingApi.ping_app_id ...'
      end
      # resource path
      local_var_path = '/ping'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APP_NORMAL']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PingSchema')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PingApi#ping_app_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
