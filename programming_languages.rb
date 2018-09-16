def reformat_languages(languages)
  language_attributes = {}

  languages.each do |oo_or_functional, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, str_value|
        if language_attributes[language].nil?
          language_attributes[language] = {}
        end
        language_attributes[language][:style] ||= []  # create a :style key within that hash and set it equal to an empty array
        language_attributes[language][:style] << oo_or_functional  #added oo key from first level of languages hash to this key                                
        if language_attributes[language][attribute].nil?
          #if :ruby language key doesn't have a :type key nested within it
          language_attributes[language][attribute] = str_value  #set this :type key to equal the str "interpreted"
        end
      end
    end
  end
  language_attributes
end