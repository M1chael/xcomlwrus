When(/^I start translator without parameters$/) do
  steps %Q(When I run `./xcomlwrus.sh` interactively)
end

Given(/^the following files exist with path "([^"]*)":$/) do |path, files|
  files.raw.each do |file|
    steps %Q(Given an empty file named "#{path}/#{file[0]}")
  end
end

Then(/^the following files should exist with path "([^"]*)":$/) do |path, files|
  files.raw.each do |file|
    steps %Q(Then a file named "#{path}/#{file[0]}" should exist)
  end
end

Then(/^the following files should not be equal:$/) do |files|
  files.rows_hash.each do |orig, bkp|
    steps %Q(Then the file "#{PATH}/#{orig}" should not be equal to file "#{PATH}/#{bkp}")
  end
end
