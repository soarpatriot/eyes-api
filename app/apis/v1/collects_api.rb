class V1::CollectsApi < Grape::API
  namespace :collects do
    params do 
      requires :accepted_code, type: String
      requires :opt_at, type: DateTime
      requires :status, type: Integer
      requires :remark, type: String
      optional :user_id, type: Integer
      
    end
    post do 
      collect = Collect.where(accepted_code: params[:accepted_code]).first
      timeline = Timeline.new opt_at: params[:opt_at], status: params[:status], remark: params[:remark]
      timeline.user_id = params[:user_id] unless params[:user_id].nil?
      
      if collect.nil?
        collect = Collect.new accepted_code: params[:accepted_code], status: params[:status]
        collect.user_id = params[:user_id] unless params[:user_id].nil?
        collect.save 
      else
        collect.user_id = params[:user_id] unless params[:user_id].nil?
        collect.save 
      end
      timeline.timelineable = collect
      timeline.save
      {code:0, message: "success"}  
    end
  end 
end
