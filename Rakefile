#coding: utf-8
VARS_FILES = %w[base omni_server webapp]

task default: :hi

task :hi do
  puts 'hello kitty'
end

VARS_FILES.each do |tname|
  task "check_#{tname}_vars".to_sym do
    raise "变量文件'vars/#{tname}.yml'不存在,请复制vars/#{tname}.yml.example" unless File.exist?("vars/#{tname}.yml")
  end
end

desc '服务器基础设置'
task base: :check_base_vars do
  sh 'ansible-playbook -i ansible_hosts -k base.yml'
end


desc '安装基础软件'
task omni_server: :check_omni_server_vars do
  sh 'ansible-playbook -i ansible_hosts -K omni_server.yml'
end

desc '添加webapp应用'
task webapp: :check_webapp_vars do
  sh 'ansible-playbook -i ansible_hosts -K webapp.yml'
end
