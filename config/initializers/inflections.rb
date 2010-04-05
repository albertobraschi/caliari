ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /ao$/i, 'oes'
  inflect.singular /oes$/i, 'ao'
  inflect.plural /l$/i, 'is'
  inflect.singular /is$/i, 'l'
  inflect.singular(/(r|z)es$/i, '\1')
  inflect.plural(/(r|z)es$/i, '\1')
  inflect.irregular 'bar', 'bares'
end

