require 'pry'


def get_first_name_of_season_winner(data, season)
  data[season].each do |key|
    if key["status"].to_s == "Winner"
      return key["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |general|
      if general["occupation"] == occupation
       return general["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, info|
    info.each do |general|
      if general["hometown"]==hometown
        count += 1
      else nil
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |general|
      if general["hometown"]==hometown
        return general["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  count = 0
  data[season].each do |general|
    total_age += general["age"].to_i
    count += 1
  end
  average_age = total_age.to_f/count
  average_age.round
end
