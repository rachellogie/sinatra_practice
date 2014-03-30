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

  scenario "User can add a task and see it on the homepage" do
    visit '/'
    click_on "Add a Task"
    fill_in "create_task", with: "new_task"
    click_on "Create Task"
    expect(page).to have_content "new_task"
  end

end