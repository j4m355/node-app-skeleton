task :install => [:npm]
task :deployment => [:install, :stopService, :updateCode, :startService]
task :default => [:runProgram]

task :npm do
    sh "npm install"
end

task :stopService do
    sh "sudo service <<ServiceName>> stop"
end

task :startService do
    sh "sudo service <<ServiceName>>start"
end

task :updateCode do
    sh "git checkout master"
    sh "git pull origin master"
end

task :runProgram do
  sh "node index.js"
end





