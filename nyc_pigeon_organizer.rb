def nyc_pigeon_organizer(data)
  #write your code here!
  pigeon_list = {}

  pigeon_names = data.collect do |attributes, characteristic|
    characteristic.values
  end
  .flatten.uniq

  pigeon_names.each { |name| pigeon_list[name] = {}}

  data.each do |attributes, characteristic|
    pigeon_list.each do |name, value|
      pigeon_list[name][attributes] = []
    end
  end

  data.each do |attributes, characteristic|
    characteristic.each do |value, pigeon_names|
      pigeon_names.each do |name|
        pigeon_list[name][attributes] << value.to_s
      end
    end
  end

  pigeon_list
end
