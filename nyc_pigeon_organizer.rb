require 'pry'
def nyc_pigeon_organizer(data)
  result = {}
  data.each { |attribute, hash|
    hash.each { |pair, names|
      names.each{ |name|
        # binding.pry
        # if result has a key name has specic name add
        # current_name = hash[pair][name]
        if !result.has_key?(name) #=== attribute[hash][pair][name]
          result[name] = {}
        end

        if !result[name].has_key?(attribute)
          result[name][attribute] = []
        end

        if !result[name][attribute].include?(pair)
          result[name][attribute] << pair.to_s
        end
         #result[name] = {attribute => [pair]}
          # elsif
        # binding.pry
        # end
      }
    }
  }

  return result
end
