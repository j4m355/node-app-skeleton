task :install => [:npm, :createLocalSettings]
task :default => [:runProgram]
task :build => [:stopService, :npm, :startService]


task :npm do
    sh "npm install"
end

task :createLocalSettings do
	Dir.chdir "app" do
		Dir.chdir "config" do
			sh "cp settings.json _settings.json"
		end
	end
end

task :stopService do
    sh "echo <<pass>> | sudo service <<ServiceName>> stop"
end

task :startService do
    sh "echo <<pass>> | sudo service <<ServiceName>> start"
end

task :runProgram do
  sh "node index.js"
end





