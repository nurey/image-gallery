require "rails_helper"

feature "Image upload" do
  scenario "User creates a new image" do
    visit "/images/new"

    fill_in "Caption", :with => "My Fancy Caption"
    fill_in "Description", :with => "My Fancy Description"
    fill_in "Alternative Text", :with => "My Fancy Alternative text"
    attach_file 'image[picture]', File.join(Rails.root, '/spec/support/example.jpg')
    click_button "Create Image"

    expect(page).to have_text("Image was successfully created.")
    expect(page).to have_selector("img[alt$='My Fancy Alternative text']")
    expect(page).to have_selector("figcaption:contains('My Fancy Caption')")
    expect(page).to have_selector(".description:contains('My Fancy Description')")
  end
end
