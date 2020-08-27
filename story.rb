class Story

attr_accessor :name

attr_reader :author


def author=(author)
    raise AssociationTypeError, "#{author.class} recieved, author expected." if !author.is_a?(Author)
        @author = author
        author.add_story(self) unless author.stories.include?(self)

end


attr_accessor :category 

def category=(category)
    raise AssociationTypeError, "#{category.class} recieved, category expected." if !category.is_a?(category)
        @category = category
        category.add_story(self) unless category.stories.include?(self)

end
end