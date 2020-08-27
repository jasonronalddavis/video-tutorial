describe Story do

    let(:story){Story.new.tap{|s| s.name = "The old man and the sea"}}
    let(:author){Author.new.tap{|a| a.name = "Ernest Hemingway"}}
    
    
    it "has a name" do

        expect(story.name).to eq("The old man and the sea")
        #expectation
        
    end


    context "with an author" do
        describe "#author=" do
        it "can set an author" do
            story.author = author
            expect(story.author).to eq(author)
        end


        it "throws an error if you assign anything besides an isntance of an Author" do
            expect{story.author = "Earnest Hemingway"}.to raise_error(AssociationTypeError)
        end
    

        it "reciprocates the story into the authors stories collection" do
            story.author = author

            expect(author.stories).to include(story)

        end
    end
end
end