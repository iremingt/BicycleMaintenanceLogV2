require "rails_helper"
RSpec.feature "Projects", type: :feature do
    context "Update project" do
      let(:log) { Log.create(title: "Test title", description: "Test content", date: 4022023) }
      before(:each) do
        visit edit_log_path(log)
      end
 
 
      scenario "should be successful" do
        within("form") do
          fill_in "Description", with: "New description content"
        end
        click_button "Update Log"
        expect(page).to have_content("Project was successfully updated")
      end
 
 
      scenario "should fail" do
        within("form") do
          fill_in "Description", with: ""
        end
        click_button "Update Log"
        expect(page).to have_content("Description can't be blank")
      end

      scenario "Title can't be blank" do
        within("form") do
          fill_in "Title", with: ""
        end
        click_button "Update Log"
        expect(page).to have_content("Description can't be blank")
      end


    end

    context "Create project" do
        let(:log) { Log.create(title: "Test title", description: "Test content", date: 4022023) }
        before(:each) do
          visit new_log_path(log)
        end
        #####1."Project was successfully created"######
        scenario "Project should be successful" do
          within("form") do
            fill_in "Description", with: "New description content"
          end
          click_button "Create Log"
          expect(page).to have_content("Project was successfully updated")
        end
        ###########
  
        #####2."Description can't be blank"######
        scenario "Title can't be blank" do
          within("form") do
            fill_in "Title", with: ""
          end
          click_button "Create Log"
          expect(page).to have_content("Title can't be blank")
        end
        ############
  
        ######3.“Title can't be blank"######
        scenario "Title can't be blank" do
          within("form") do
            fill_in "Title", with: ""
          end
          click_button "Create Log"
          expect(page).to have_content("Title can't be blank")
        end
        ############
    end

end
 
