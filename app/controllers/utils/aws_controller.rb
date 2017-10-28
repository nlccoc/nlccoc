require 'aws-sdk'
class Utils::AwsController < ApplicationController
  def isexist
    url = params[:url]
    puts url
    
    Aws.config.update({
      region: 'us-west-1',
      credentials: Aws::Credentials.new('AKIAJRB7EV7SMGYWYNMA', 'Avo37PttnB7fZn0tPCOee6qlylVT9yeUMYUYYkG1'),
    })
    
    #s3 = Aws::S3::Client.new
   
    bucket = Aws::S3::Bucket.new('files.natecheng.me')
    #resp = s3.list_buckets
    #resp.buckets.map(&:name)
    
    #bucket = s3.buckets['files.natecheng.me']
    
    puts bucket.inspect
    object = bucket.object(url)
    puts object.inspect
    exist = object.exists?

    
    respond_to do |format|
      format.html { }
      format.json { render json: { :url => url, :exist => exist } }
    end
  end
end