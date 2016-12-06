class LeadsController < ApplicationController
	protect_from_forgery with: :null_session
  def index
  	@leads = Lead.paginate(:per_page => 5, :page => params[:page])
  end
  def filter
  	@leads = Lead.all
  	if params[:first_name]
	  	@leads = @leads.where('first_name LIKE ?', '%' + params[:first_name] + '%').all
	end
	if params[:last_name]
		@leads = @leads.where('last_name LIKE ?', '%' + params[:last_name] + '%').all
	end
	if params[:before]
		@leads = @leads.registered_after(params[:before])
	end
	if params[:after]
		@leads = @leads.registered_before(params[:after])
	end
	@leads = @leads.paginate(:per_page => 5, :page => params[:page])
  	render 'index'
  end
end
