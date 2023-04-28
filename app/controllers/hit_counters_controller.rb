class HitCountersController < ApplicationController
  def index
    @hits = HitCounter.all
    render json: @hits
  end

  def create
    @hit_counter = HitCounter.new(hit_counter_params)
    if @hit_counter.valid?
      @hit_counter.save
      render json: { message: 'hitCounter has been created successfully!', hit_obj: @hit_counter }, status: :created
    else
      render json: { message: 'hitCounter couldn\'t be created' }, status: :not_acceptable
    end
  end

  def update
    application_name = params[:application_name]
    @hit = HitCounter.where(application_name:)
    @hit.increment(:application_counter)
  end

  def hit_counter_params
    params.require(:hit_counter).permit(:application_name)
  end
end
