$.fn.extend
  tagIt: (options) ->
    self = $.fn.tagIt
    opts = $.extend {}, self.default_options, options
    $(this).each (i, el) ->
      self.init el, opts
  

$.extend $.fn.tagIt,    
   init: (el, opts) -> 
      pattern = opts['pattern']
      style = opts['style']
      text = $(el).html()
      re = new RegExp("\\b"+pattern+"\\b","g")       
      $(el).html(text.replace(re,'<span class="label '+style+'">'+pattern+'</span>'))
      
      
      
