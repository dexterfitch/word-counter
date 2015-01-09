class String

	define_method(:wordcount) do |word_to_check|

		word_to_check.downcase!()
		string_array = self.split(" ")
		found_word = []

		string_array.each() do |single_word|
			single_word.downcase!()

			single_word_sans_initial_punctuation = single_word[1..-1]
			single_word_sans_final_punctuation = single_word.chop
			single_word_sans_initial_and_final_punctuation = single_word_sans_initial_punctuation.chop

			if single_word == word_to_check
				found_word.push(word_to_check)
			elsif single_word_sans_initial_and_final_punctuation == word_to_check
				found_word.push(word_to_check)
			elsif single_word_sans_initial_punctuation == word_to_check
				found_word.push(word_to_check)
			elsif single_word_sans_final_punctuation == word_to_check
				found_word.push(word_to_check)
			end
		end

		return found_word.length()

	end

end