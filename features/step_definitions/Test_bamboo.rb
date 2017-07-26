When(/^I am on the google page$/) do
  visit 'search?site=&source=hp&q=test&oq=test&gs_l=psy-ab.3..35i39k1l6.1342.1594.0.1716.6.5.0.0.0.0.311.311.3-1.1.0....0...1.1.64.psy-ab..5.1.311.6.AVimYRFH1go'
end

When (/^Search for text test$/) do
  expect(page).to have_content ('test')
end

When (/^Search for text wik$/) do
  expect(page).to have_content ('wik')
end

When (/^Search for text synonums$/) do
  expect(page).to have_content ('synonymus')
end

When (/^Search for text number$/) do
  expect(page).to have_content ('258822')
end
