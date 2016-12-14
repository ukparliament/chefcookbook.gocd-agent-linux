require 'rubocop/rake_task'
require 'foodcritic'
require 'rspec/core/rake_task'

FoodCritic::Rake::LintTask.new

RSpec::Core::RakeTask.new

desc 'Run Foodcritic style checks'
task style: [:foodcritic]

desc 'Run all style checks and unit tests'
task test: [:style, :spec]

task :upload_to_chef do
  sh 'berks install'
  sh 'berks upload'
end

task :packer, :source_ami_id do |_, args|
  puts args[:source_ami_id]
  sh 'rm -rf berks-cookbooks/*'
  sh 'berks vendor'
  sh 'packer validate template.json'

  # Execute Packer to store AMI ID in a file called 'ami-id'
  sh "packer build -machine-readable -var 'source_ami=#{args.source_ami_id}' template.json | tee build.log"
  @ami_id=`grep 'artifact,0,id' build.log | cut -d, -f6 | cut -d: -f2`.chomp
  File.write('ami-id', @ami_id)
end

task default: ['test']
task ci: ['style', 'upload_to_chef']
task cloud: ['test', 'integration:amazon', 'upload_to_chef']
