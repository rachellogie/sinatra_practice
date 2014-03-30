require 'capybara/rspec'
require 'spec_helper'
require_relative '../app'

Capybara.app = App

feature "Task Manager" do

  scenario "User sees welcome on the homepage" do
    visit '/'
    expect(page).to have_content "Welcome"
  end

  scenario "User can click on the add task link and go to add task page" do
    visit '/'
    click_on "Add a Task"
    expect(page).to have_content "Add a Task: "
  end

end