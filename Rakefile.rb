task :install => [:npm]
task :default => [:runProgram]
task :build => [:stopService, :npm, :startService]


task :npm do
    sh "npm install"
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





