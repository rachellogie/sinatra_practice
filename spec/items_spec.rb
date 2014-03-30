require 'capybara/rspec'
require 'spec_helper'
require_relative '../app'

Capybara.app = App

feature "Task Manager" do

  scenario "User sees welcome on the homepage" do
    visit '/'
    expect(page).to have_content "Welcome"
  end

end