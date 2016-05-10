Given /^a user visits the signin page$/ do
  visit signin_path
end

When /^they submit invalid signin information$/ do
  click_button "Sign in"
end

Then /^they should see an error message$/ do
  expect(page).to have_selector('div.alert.alert-error')
end

Given /^the user has an account$/ do
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
end

When /^the user submits valid signin information$/ do
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

Then /^they should see their profile page$/ do
  expect(page).to have_title(@user.name)
end

Then /^they should see a signout link$/ do
  expect(page).to have_link('Sign out', href: signout_path)
end

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



