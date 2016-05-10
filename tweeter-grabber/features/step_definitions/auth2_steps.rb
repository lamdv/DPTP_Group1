Given /^a user visits the signup page$/ do
  visit signup_path
end

When /^they submit valid signup information$/ do
  fill_in "Name",    with: @user.name
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  fill_in "Confirmation",    with: @user.password_confirmation
  click_button "Create my account"
end

Then /^they should see success message$/ do
  expect(page).to have_selector('div.alert.alert-success')
end

When /^they submit invalid signup information$/ do
  click_button "Create my account"
end
