require 'pp'

def nyc_pigeon_organizer(data)
  names  = data[:gender][:male] + data[:gender][:female]
  result = {}

  color_from_original_data  = data[:color]
  gender_from_original_data = data[:gender]
  home_from_original_data   = data[:lives]

  names.map do |bird|
    result[bird] = {
      :color  => attribute_check(bird, color_from_original_data),
      :gender => attribute_check(bird, gender_from_original_data),
      :lives  => attribute_check(bird, home_from_original_data)
    }
  end
  pp result
end

def attribute_check(bird, hash)
  result = []
  hash.each do |color, names|
    if names.include?(bird)
      result << color.to_s
    end
  end
  result
end
