class Author


    attr_accessor :name

    def initialize
 #has_many stories interface
        @stories = []
    end



    def stories #has_many stories interface
        @stories.dup.freeze
end


def add_story(story) #has_many stories interface
        raise AssociationTypeError, "#{story.class} recieved, story expected." if !story.is_a?(Story)
        @stories << story
        story.author = self unless story.author == self
        
    end


    def bibliography
        
      
        #Go through all the story instances ands grab each story's name.
        self.stories.collect{|s| s.name}
    end
end


#h.stories.first.name
#h = _
