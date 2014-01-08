require "spec_helper"

feature "Managing containers" do
  scenario "can be viewed as an index" do
    create_list(:container, 3)
    visit containers_path

    expect(page).to have_css("article.container", count: 3)
  end

  context "creating containers" do
    let!(:parent) { create(:container) }

    scenario "container be created and inserted into the tree" do
      visit new_container_path

      fill_in "Name", with: "My Container"
      select parent.name, from: "Parent"
      click_on "Create"

      expect(page).to have_css("div", text: "container successfully created")
      expect(Container.where(name: "My Container").count).to eq(1)
    end
  end
end
