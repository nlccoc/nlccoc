require 'aws-sdk'
class Utils::AwsController < ApplicationController
  def isexist
    url = params[:url]
    exist = false
    
    if Rails.env.production?
      unless url.to_s.strip.empty? then  
        Aws.config.update({
          region: 'us-west-1',
          credentials: Aws::Credentials.new(ENV['S3_ACCESS_KEY'], ENV['S3_SECRET_KEY'])
        })
        
       
        bucket = Aws::S3::Bucket.new(ENV['S3_BUCKET'])
  
        object = bucket.object(url)
        exist = object.exists?
      end
    else
      
      
      unless url.to_s.strip.empty? then  
        path = "#{Rails.root}/public#{url}"
        exist = File.exist?(path)
      end
    end
    
    respond_to do |format|
      format.json { render json: { :url => url, :exist => exist } }
    end
  end
end