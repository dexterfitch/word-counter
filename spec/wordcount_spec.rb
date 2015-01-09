require('rspec')
require('wordcount')

describe('String#wordcount') do

	it('will return 0 for a given word that does not appear in a given string') do
		expect('doodle bug'.wordcount('poodle')).to(eq(0))
	end

	it('will return the correct number of appearances of a given word in a given string without punctuation') do
		expect('cupcakes made crudely are still made delicious'.wordcount('made')).to(eq(2))
	end

	it('will return the correct number of appearances of a given word in a given string with one punctuation before the given word') do
		expect('"me irl"'.wordcount('me')).to(eq(1))
	end

	it('will return the correct number of appearances of a given word in a given string with one punctuation after the given word') do
		expect('horse feathers!'.wordcount('feathers')).to(eq(1))
	end

	it('will return the correct number of appearances of a given word in a given string with one punctuation before and after the given word') do
		expect('?around and around and around!'.wordcount('around')).to(eq(3))
	end
	it('will return the correct number of appearances of a given word regardless of capitalization') do
		expect('CHOCOLATE! I love chocolate!'.wordcount('Chocolate')).to(eq(2))
	end
end