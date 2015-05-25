namespace :deploy do
  desc 'Record deployment'
  task :record_deployment do
    on roles(:db) do
    end
  end

  after :publishing, :record_deployment
end
