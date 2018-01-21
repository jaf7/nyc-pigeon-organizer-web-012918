require 'pry'
def nyc_pigeon_organizer(data)
  organized_pigeons = {}

  data.each do |attr_key, attr_hash|
    # :color, {:purple => ...}
    # binding.pry
    attr_hash.each do |attribute, names_array|
      # :purple, ["Theo", "Peter Jr.", "Lucky"]
      # binding.pry
      names_array.each do |name|
        # binding.pry
        organized_pigeons[name] ||= {}
        organized_pigeons[name][attr_key] ||= []
        organized_pigeons[name][attr_key] << attribute.to_s
      end
    end
  end
  # binding.pry
  organized_pigeons
end
