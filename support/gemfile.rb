def projects_home
  ENV['APTUS_HOME'] || (print_error && raise)
end

def path_gem(gem_name)
  gem gem_name, :path => file_system_path(gem_name)
end

def file_system_path(gem_name)
  File.join(File.expand_path(projects_home), gem_name)
end

def print_error
  puts "The APTUS_HOME environment variable must be set to the path that contains Aptus project directories"
end
