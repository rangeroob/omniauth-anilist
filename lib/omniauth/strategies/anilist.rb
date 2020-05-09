# frozen_string_literal: true

require 'omniauth-oauth2'
module OmniAuth
  module Strategies
    class Anilist < OmniAuth::Strategies::OAuth2
      include OmniAuth::Strategy
      option :client_options, {
        site: 'https://anilist.co',
        authorize_url: 'https://anilist.co/api/v2/oauth/authorize',
        token_url: 'https://anilist.co/api/v2/oauth/token'
      }
      def request_phase
        super
      end
      info do
        raw_info.merge('token' => access_token.token)
      end
      uid { raw_info['id'] }
      def raw_info
        @raw_info ||=
          access_token.get("/your site's current user endpoint").parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
