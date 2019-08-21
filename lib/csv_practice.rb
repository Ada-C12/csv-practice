# csv_practice.rb
require 'csv'
require 'awesome_print'
require 'pry'


# Part 1 - CSV Practice
def load_data(filename)
  return CSV.read(filename, headers: true).map(&:to_h)
end

def total_medals_per_country(olympic_data)
  total_medals = [{ "country" => "Norway", "count"=> 0}]
  olympic_data.each do |athlete|
    country_exists = false
    if athlete["Medal"] != "NA"
      total_medals.each do |index|
        if index["country"] == athlete["Team"]
          index["count"] += 1
          country_exists = true
        end
      end
      if country_exists == false
        total_medals.push({"country" => athlete["Team"], "count" => 1})
      end
    end
  end
  return total_medals
end

def save_medal_totals(filename, medal_totals)
  column_names = medal_totals[0].keys
  CSV.open(filename, "w") do |file|
    file << column_names
    medal_totals.to_a.each do |country|
      file << country.values
    end
  end
end

# Part 2 - More Enumerable Practice

def all_gold_medal_winners(olympic_data)
  
end

def metals_sorted_by_country(metal_totals)
  
end

def country_with_most_metals(metal_totals)
  
end

def athlete_height_in_inches(olympic_data)
  
end
