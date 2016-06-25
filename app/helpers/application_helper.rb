module ApplicationHelper

	def sanitizer(var)
	tags = ['strong', 'em', 'a', 'div','br', 'p', 'h1','h2','h3','h4','h5','h6','ol','ul','li']
	sanitize(var, tags: tags, attributes: ['href', 'class'])
	end
end
