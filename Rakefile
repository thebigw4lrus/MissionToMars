require "rake/testtask"
task :default => [:test]
Rake::TestTask.new do |test|
test.libs << "test"
test.test_files = Dir[ "tests/*.rb" ]
test.verbose = true
end

