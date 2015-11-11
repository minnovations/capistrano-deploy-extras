namespace :deploy do
  desc 'Maintenance On'
  task :maintenance_on do
    on roles(:web) do
      execute :cp, '-f', "#{current_path}/public/maintenance.template", "#{current_path}/public/maintenance.html"
    end
  end

  desc 'Maintenance Off'
  task :maintenance_off do
    on roles(:web) do
      execute :rm, '-f', "#{current_path}/public/maintenance.html"
    end
  end
end
