Ember.Handlebars.helper 'download-button', (object, url_attr, type, options) ->
  url = object.get(url_attr)
  switch type
    when 'release'
      button_class = 'release-button'
      button_label = 'R'
    when 'beta'
      button_class = 'beta-button'
      button_label = 'B'
    when 'bugged'
      button_class = 'bugged-button'
      button_label = 'G'
    when 'normal'
      button_class = 'normal-button'
    else
      button_class = 'button'

  [label, center] = ['', '']
  label = "<span class='button-label'>#{button_label}</span>" if button_label
  center = "text-center" unless button_label
  url = '' if url = ''
  new Handlebars.SafeString "<a href='#{url}' class='#{center} #{button_class}'>#{label}<span>Download</span></a>"