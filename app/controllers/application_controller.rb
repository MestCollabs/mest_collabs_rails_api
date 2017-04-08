class ApplicationController < ActionController::API

  before_action :authenticate_request
  attr_reader :current_app

  #Include Serialization...
  include ActionController::Serialization

  #function to render pretter json
  def render_pretty_json(params)
    render json: JSON.pretty_generate(params.as_json)
  end

  private

  #Get mester by id
  def get_mester(id)
    Mester.find(id)
  end

   def authenticate_request
     @current_app = AuthorizeApiRequest.call(request.headers).result
     render json: { error: 'Not Authorized' }, status: 401 unless @current_app
   end

   #Time comarison function
   def get_day (date_time)
   	date_time.to_s[8...10]
   end

   def get_month (date_time)
   	date_time.to_s[5...7]
   end

   def get_year (date_time)
   	date_time.to_s[0...4]
   end

   def get_full_time(date_time)
   	date_time.to_s[11...-1]
   end

   def get_hour(date_time)
   	get_full_time(date_time).to_s[0...2]
   end

   def get_minutes(date_time)
   	get_full_time(date_time).to_s[3...5]
   end

   def get_seconds(date_time)
   	get_full_time(date_time).to_s[6..8]
   end


   def compare_dates(date_two)
   	#declae now as date_one
   	date_one = Time.now

   	#declare all the variables from year to monts to day to minutes and down to seconds

   	date_one_hour_int 	= get_hour(date_one).to_i
   	date_two_hour_int 	= get_hour(date_two).to_i
   	date_one_year_int  	= get_year(date_one).to_i
   	date_two_year_int  	= get_year(date_two).to_i
   	date_one_month_int 	= get_month(date_one).to_i
   	date_two_month_int 	= get_month(date_two).to_i
   	date_one_day_int  	= get_day(date_one).to_i
   	date_two_day_int  	= get_day(date_two).to_i
   	date_one_minute_int = get_minutes(date_one).to_i
   	date_two_minute_int = get_minutes(date_two).to_i
   	date_one_second_int = get_seconds(date_one).to_i
   	date_two_second_int = get_seconds(date_two).to_i

   	#Check same year
   	if date_one_year_int == date_two_year_int
   		#check for same month
   		if date_one_month_int == date_two_month_int
   			#same year same month
   			if date_one_day_int == date_two_day_int
   				#same date same month same day
   				if date_one_hour_int == date_two_hour_int
   					#same year same month same day same hour
   					#check whether same minute
   					if date_one_minute_int == date_two_minute_int
   						#same year, month, day, hour and minute
   						#Check for seconds
   						if date_one_second_int == date_two_second_int
   							#same everything
   							"now"
   						else
   							#same everything except seconds
   							difference = (date_one_second_int - date_two_second_int).to_s
   						    difference.to_i == 1? "#{difference} second ago" : "#{difference} seconds ago"
   						end
   					else
   						#different minute all else the same
   						difference = (date_one_minute_int - date_two_minute_int).to_s
   						difference.to_i == 1? "#{difference} minute ago" : "#{difference} minutes ago"
   					end
   				else
   					#Same year same month same day not the same hour
   					difference = (date_one_hour_int - date_two_hour_int).to_s
   					difference.to_i == 1? "#{difference} hour ago" : "#{difference} hours ago"
   				end
   			else
   				#same year same month but different day
   				 difference = (date_one_day_int - date_two_day_int).to_s
   				 difference.to_i == 1? "#{difference} day ago": "#{difference} days ago"

   			end
   		else
   			#Same year but different months
   			difference = (date_one_month_int - date_two_month_int).to_s
   			difference.to_i == 1? "#{difference} month ago" : "#{difference} months ago"
   		end
   	else
   		# if the same year else statement
   		difference = (date_one_year_int - date_two_year_int).to_s
   		difference.to_i == 1? "#{difference} year ago" : "#{difference} years ago"
   	end
   end

   #custom deep level model display function display
     def has_many_display(all_low_model_elements, model, hash_name, model_id)
      all_low_model_elements_array = []
      all_low_model_elements.each do |each_element|
        each_element = {hash_name.to_sym =>
                            {convert_to_sym("#{hash_name}_details")   => each_element,
                             convert_to_sym("#{hash_name}er_details") => model.find(each_element["#{model_id}"])}}
        all_low_model_elements_array.push(each_element)
      end
      all_low_model_elements_array
    end

    #custom higher level model display
    #five parameters Model_name, User_model, user_model_ref, Current_model, current_model_ref, has_many_name
    def render_with_embeded_has_many(model, low_model_name,  curr_model_ref, user_model_name, user_model_ref, has_many_name )
      models = []
      model.all.each do |element|
        all_low_ele = elements_by_model_id(element.id, low_model_name, "#{curr_model_ref}_id" )
        has_many_detailed = has_many_display(all_low_ele, user_model_name, "#{has_many_name}", "#{user_model_ref}")
        elementer = user_model_name.find(element["#{user_model_ref}"])

        element = {convert_to_sym("#{curr_model_ref}") =>
                            { convert_to_sym("#{curr_model_ref}_details") => element,
                              convert_to_sym("#{curr_model_ref}_#{has_many_name}s_count") => all_low_ele.count,
                              convert_to_sym("#{curr_model_ref}_#{has_many_name}s") => all_low_ele,
                              convert_to_sym("#{curr_model_ref}_#{has_many_name}s_detailed") => has_many_detailed,
                              convert_to_sym("#{curr_model_ref}er_details") => elementer
                            },
                    time_ago: compare_dates(element.updated_at)
        }
        models.push(element)
      end
      models
    end

    #utility functions
    def convert_to_sym (string)
      string.downcase.to_sym
    end

    def elements_by_model_id (model_id, model, reference_id)
      @models = model.all
      elements = []
      @models.each do |element|
        if element[reference_id] == model_id
          elements.push(element)
        end
      end
    elements
    end

end
