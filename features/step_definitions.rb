Given("I am on the articles page") do
    visit '/articles'
end
  
Then("I enter {string} in {string}") do |string, box|
    fill_in box, with: string
end

When("I click on {string}") do |string|
    click_link_or_button(string)
end

When("I click on {string} with alert") do |string|
    accept_alert do
        click_link_or_button(string)
      end
end

Then("I should see {string}") do |string|
    assert page.has_content? string
end

Then("I should not see {string}") do |string|
    assert !(page.has_content? string)
end
