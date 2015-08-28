require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
	#test "the truth" do
		#  assert true
	#end

 	test "unique_tag" do
 		quote = Quote.create(:author => 'Jon Teklu', :saying => 'You only yolo once.')
 		expected = 'JT#' + quote.id.to_s
 		actual = quote.unique_tag
 		assert_equal expected, actual
 	end

end
