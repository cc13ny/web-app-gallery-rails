class V1::ThingsController < ApplicationController
  def index
    render json: {
        :things => [
            {
             :name =>  'something',
             :guid => '0403030000-assd-asjjsad'
            }
        ]
    }.to_json
  end
end