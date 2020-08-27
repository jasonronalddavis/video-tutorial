describe Author do


    
    let(:author){Author.new.tap{|a| a.name = "Ernest Hemingway"}}
    let(:story){Story.new.tap{|s| s.name = "The old man and the sea"}}
    
    it "has a name" do
        expect(author.name).to eq("Ernest Hemingway")
    end

    context "has many stories" do
        describe "#stories" do
            it "has an empty array of stories when initialized" do       

                expect(author.stories).to match_array([])
                end

                it "returns a frozen copy of the stories array" do
                    expect(author.stories).to be_frozen
                end
    end


      describe "#add_story" do
        it "Can add story instance onto it" do
            author.add_story(story)

            expect(author.stories).to include(story)
        end

        it "reciprocates assigning this author as the story's author" do
            author.add_story(story)

            expect(story.author).to eq(author)
    end
        it "only allows stories to be pushed onto it" do
            story = "Old man and the sea"
            

            expect{author.add_story(story)}.to raise_error(AssociationTypeError)
        end
    end



end
end
