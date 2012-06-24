

set :application, "realestate"
set :repository,  "git@github.com:pcutting/lionmgt_we_buy_component.git" 
#"git@github.com:pcutting/realestate.git"
set :user,        "lionwebuy" #"lionmgt"
set :password,    "r0ck0n" #"r0ck0nTeam"
#set :deploy_via,  :remote_cache
set :use_sudo,    false
set :normalize_asset_timestamps, false


set :deploy_to, "/home/#{user}/#{application}"

set :scm, "git"
set :branch, "master"

#set :default_environment, {
#  'LANG' => 'en_US.utf8' #'en_US.UTF-8'
# }

set :scm_verbose, true

role :app,   "75.98.32.62" # "68.233.8.61"   #"yourserverip:yourserverportforssh"
role :web,  "75.98.32.62" #"68.233.8.61"   #"yourserverip:yourserverportforssh"
role :db,  "75.98.32.62", :primary => true #  "68.233.8.61",:primary => true  #"yourserverip:yourserverportforssh", :primary => true

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts
    
namespace :deploy do
  desc "Restarting Passenger with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
  
  task :precompile, :role => :app do  
    
    run "cd #{release_path}/ && rake assets:precompile"  
  end  
  
end





after 'deploy:update_code', 'deploy:symlink'#,  'deploy:precompile'



