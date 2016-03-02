def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, values|
    values.each do |value, names|
      names.each do |name|
        if (new_hash[name] == nil)
          new_hash[name] = {}
          new_hash[name][attribute] = []
          new_hash[name][attribute] << value.to_s
        elsif (new_hash[name][attribute] == nil)
          new_hash[name][attribute] = []
          new_hash[name][attribute] << value.to_s
        else
          new_hash[name][attribute] << value.to_s
        end
      end
    end
  end
  new_hash
end