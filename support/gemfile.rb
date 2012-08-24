def projects_home
  ENV['PROJECTS_HOME'] || "~/projects"
end

def path_gem(gem_name)
  gem gem_name, :path => file_system_path(gem_name)
end

def file_system_path(gem_name)
  File.join(File.expand_path(projects_home), gem_name)
end
