require "spec_helper"

feature "Managing containers" do
  let(:parent) { create(:container) }
  scenario "container be created and inserted into the tree" do
    visit new_container_path

    fill_in "Name", with: "My Container"
    fill_in "Parent", with: parent.id
    click_on "Create"

    expect(page).to have_css("div", text: "container successfully created")
    expect(Container.where(name: "My Container").count).to eq(1)
  end
end
