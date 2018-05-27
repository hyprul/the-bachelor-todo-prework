def get_first_name_of_season_winner(data, season)
  # code here
  contestants = data.fetch(season)
  contestants.each do |contestant|
  	if contestant.fetch("status" ).downcase == "winner"
  		return contestant["name"].split(" ").first
  	end
  end

end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
  	contestants.each do |contestant|
  		if contestant["occupation"] == occupation
  			return contestant.fetch("name")
  		end
  	end
  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0

   data.each do |season, contestants|
  	contestants.each do |contestant|
  		if contestant["hometown"] == hometown
  			count += 1
  		end
  	end
  end

  count

end

def get_occupation(data, hometown)
  # code here
    data.each do |season, contestants|
  	contestants.each do |contestant|
  		if contestant["hometown"] == hometown
  			return contestant["occupation"]
  		end
  	end
  end

end

def get_average_age_for_season(data, season)
  # code here
  age_total = 0
  num_cont = 0 
  contestants = data.fetch(season)

  contestants.each do |contestant|
  	age_total += contestant["age"].to_i
  	num_cont += 1
  end

  (age_total/num_cont.to_f).round

end
