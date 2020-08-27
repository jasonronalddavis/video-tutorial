describe Category do


    let(:category){Category.new.tap{|c| c.name = "Fiction"}}
    let(:story){Story.new.tap{|s| s.name = "The old man and the sea"}}


    it "has a name" do
        #setup
        #expectation
        expect(category.name).to eq("Fiction")
    end

    context "has many stories" do
        describe "#stories" do
            it "has an empty array of stories when initialized" do       
                        expect(category.stories).to match_array([])
                        end
        
                        it "returns a frozen copy of the stories array" do
                            expect(category.stories).to be_frozen
                        end
            end
        
        
              describe "#add_story" do
        
                it "Can add story instance onto it" do
                    category.add_story(story)
        
                    expect(category.stories).to include(story)
                end
        
                it "reciprocates assigning this category as the story's category" do
                    category.add_story(story)
                    
                    expect(story.category).to eq(category)
            end
                it "only allows stories to be pushed onto it" do
                    story = "Old man and the sea"
                    
        
                    expect{category.add_story(story)}.to raise_error(AssociationTypeError)
                end
            end
        
        describe "#bibliography" do
                it "returns an array of all the stories names of an category" do
                    story_1 = Story.new.tap{|s| s.name = "Old man and the sea"}
                    story_2 = Story.new.tap{|s| s.name = "The sun also rises"}
                    story_3 = Story.new.tap{|s| s.name = "For whom the bell tolls"}
        
        
                    category.add_story(story_1)
                    category.add_story(story_2)
                    category.add_story(story_3)
        
                    expect(category.bibliography).to match_array(["Old man and the sea","The sun also rises","For whom the bell tolls"])
        
        end
end
end
end