module ApplicationHelper

	def sanitizer(var)
	sanitize(var, tags: ['strong', 'em', 'a', 'div','br', 'p', 'h1','h2','h3','h4','h5','h6','ol','ul','li'], attributes: ['href', 'class'])
	end
end
