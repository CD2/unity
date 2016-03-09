module ApplicationHelper

	def page_title title=''
		title += ' | ' if !title.empty?
		"#{title}Unity"
	end

end
