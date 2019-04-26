# frozen_string_literal: true

desc 'Install gem dependencies'
task :deps do
  require 'rubygems'
  spec = Gem::Specification.load('apiomatic.gemspec')
  spec.dependencies.each do |dep|
    reqs = dep.requirements_list
    reqs = (['-v'] * reqs.size).zip(reqs).flatten
    # Use system over sh, because we want to ignore errors!
    system Gem.ruby, '-S', 'gem', 'install', '--conservative', dep.name, *reqs
  end
end
