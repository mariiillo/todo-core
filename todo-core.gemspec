require_relative 'lib/todo/core/version'

Gem::Specification.new do |spec|
  spec.name          = 'todo-core'
  spec.version       = Todo::Core::VERSION
  spec.authors       = ['Mario Viapiano']
  spec.email         = ['mario@shipcloud.io']

  spec.summary       = 'Todo Core'
  spec.description   = 'Todo Core'
  spec.homepage      = 'http://not-yet.com'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'http://not-yet.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'http://not-yet.com'
  spec.metadata['changelog_uri'] = 'http://not-yet.com'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split('\x0').
      reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-mocks'
end
