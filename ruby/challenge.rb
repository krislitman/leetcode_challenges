require "json"
require 'active_support/all'

example = '{
     "mon_1_open": "09:00",
     "mon_1_close": "13:00",
     "tue_1_open": "09:00",
     "tue_1_close": "13:00",
     "wed_1_open": "16:00",
     "wed_1_close": "20:00",
     "thu_1_open": "09:00",
     "thu_1_close": "13:00",
     "fri_1_open": "09:00",
     "fri_1_close": "13:00",
     "sat_1_open": "09:00",
     "sat_1_close": "14:00",
     "mon_2_open": "16:00",
     "mon_2_close": "20:00",
     "thu_2_open": "16:00",
     "thu_2_close": "20:00"
}'

def hours_open_close(json)
    # hsh_map = {
    #     "mon" => {},
    #     "tue" => {},
    #     "wed" => {},
    #     "thu" => {},
    #     "fri" => {},
    #     "sat" => {}
    # }
    json = JSON.parse(json)
    json.reduce({}) do |acc, (key, value)|
        require 'pry'; binding.pry
        if acc[key]
            acc[key] << value
        else
            acc[key] = value
        end
        acc
    # json.each do |key, value|
    #     split_key = key.split("_")
    #     if hsh_map[split_key.first] && split_key[1] == "1"
    #         hsh_map[split_key.first][split_key[1]] << value
    #     # elsif hsh_map[split_key.first] && split_key[1] == "2"
    #     #     hsh_map[split_key.first][split_key[1]] << value
    #     end
    end
    require 'pry'; binding.pry
    output = []
    hsh_map.each do |k, v|
        if !v["1"].empty? && !v["2"].empty?
            text = "#{k.titleize}: #{v["1"].join("-")}, #{v["2"].join("-")}"
            output << "#{text}\n"
        elsif !v["1"].empty? && v["2"].empty?
            text = "#{k.titleize}: #{v["1"].join("-")}"
            output << "#{text}\n"
        end
    end
    puts output
end


puts hours_open_close(example)
# Mon: 09:00-13:00, 16:00-20:00
# Tue: 09:00-13:00
# Wed: 16:00-20:00
# Thu: 09:00-13:00, 16:00-20:00
# Fri: 09:00-13:00
# Sat: 09:00-14:00
