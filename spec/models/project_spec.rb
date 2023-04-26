
require "rails_helper"


describe "Project Attribute Requirements on Create", :type => :model do
  context "validation tests" do
    it "ensures the title is present when creating project" do
      log = Log.new(title: "Content of the title")
      expect(log.valid?).to eq(true)
    end

    it "ensures the description is present when creating project" do
        log = Log.new(title: "Content of the description")
        expect(log.valid?).to eq(true)
    end

    it "ensures if only date is present when creating project, it fails" do
        log = Log.new(date: 4022023)
        expect(log.valid?).to eq(false)
    end

    it "ensures the description is present when creating project" do
        log = Log.new(title: "Content of the title", description: "Content of description", date: 4022023)
        expect(log.valid?).to eq(true)
    end
    
    

    it "should not be able to save project when title missing" do
      log = Log.new(description: "Some description content goes here")
      expect(log.save).to eq(false)
    end
    it "should be able to save project when have description and title and date" do
      log = Log.new(title: "Title", description: "Content of the description", date: 4022023)
      expect(log.save).to eq(true)
    end
    it "should be able to save project when description missing" do
        log = Log.new(title: "Some title content goes here")
        expect(log.save).to eq(true)
    end
    it "should not be able to save project when title missing" do
        log = Log.new(description: "Some description content goes here")
        expect(log.save).to eq(false)
    end
    it "should not be able to save project when date missing" do
        log = Log.new(date: 4022023)
        expect(log.save).to eq(false)
    end
    
  end
end


describe "Project Attribute Requirements on Edit", :type => :model do
  context "Edit project" do  
    before (:each) do
      @log = Log.create(title: "Title", description: "Content of the description", date: 4022023)
 
      end
    it "ensures the title is present when editing project" do
      @log.update(:title => "New Title")
      expect(@log.title == "New Title")
    end

    it "ensures the description is present when editing project" do
        @log.update(:description => "New Description")
        expect(@log.description == "New Description")
    end

    it "ensures the date is present when editing project" do
        @log.update(:date => 4022023)
        expect(@log.date == 4022023)
    end


  end
end

