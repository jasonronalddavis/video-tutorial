class Category


    attr_accessor :name


    def initialize 
        @stories = []

    end

        
    def stories #has_many stories interface
        @stories.dup.freeze
end


def add_story(story) #has_many stories interface
        raise AssociationTypeError, "#{story.class} recieved, story expected." if !story.is_a?(Story)
        @stories << story
        story.category = self unless story.category == self
        
    end
end
