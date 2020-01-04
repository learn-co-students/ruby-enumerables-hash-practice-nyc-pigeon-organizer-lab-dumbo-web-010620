def nyc_pigeon_organizer(data)
  # write your code here!
  #create list of names
  names = data[:color].values.flatten.uniq
  num_names = names.length
  i=0
  pigeon_list = {}
  #find out the color
  while i < num_names
    color_matrix = [];
    gender_matrix = [];
    lives_matrix = [];

  data[:color].each do |key, hash|
    if hash.detect {|name| name == names[i]}
      color_matrix.push(key.to_s)
    end
  end

  data[:gender].each do |key, hash|
    if hash.detect {|name| name == names[i]}
      gender_matrix.push(key.to_s)
    end
  end

  data[:lives].each do |key, hash|
    if hash.detect {|name| name == names[i]}
      lives_matrix.push(key.to_s)
    end
  end

#construct new hash
pigeon_list[names[i].to_str] = {:color => color_matrix, :gender => gender_matrix, :lives => lives_matrix}

i += 1
end

pigeon_list

end
