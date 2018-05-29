require 'test/unit'

# class TC_MyTest < Test::Unit::TestCase
#   # def setup
#   # end

#   # def teardown
#   # end

#   def test_fail
#     assert(false, 'Assertion was false.')
#   end
# end


class TestFilename < Test::Unit::TestCase
    def test_filenames
        Dir.glob('_posts/**/*') do |item|
            next if File.directory? item
            assert_match(/^20[12]\d-[01]\d-[3210]\d-[a-zA-Z0-9_-]*\.md$/, File.basename(item), "Filename #{item} not valid" )
        end
    end
end