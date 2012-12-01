class Printer
	def print(book)
		book.print
	end
end

class Book
	attr_accessor :title, :author
	def print
		"This is a book"
	end
end

class FictionBook < Book
	def print
		"This book is Fiction!"
	end
end
