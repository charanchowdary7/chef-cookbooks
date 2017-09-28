#Cookbook: webdeploy
#Recipe: default


execute 'StopOldWar' do
      command 'wget --http-user=admin --http-password=password "http://localhost:8080/manager/text/stop?path=/testwebapp" -0 -'

         action :run
  end
 
  execute 'UnDeployOldWar' do
    command 'wget --http-user=admin --http-password=password "http://localhost:8080/manager/text/undeploy?path=/testwebapp" -0 -'
    
         action :run
  end
 
 execute 'DeployNewWar' do
     command 'wget --http-user=admin --http-password "http://localhost:8080/manager/text/deploy?war=file:/webapp/testwebapp.war&path=/testwebapp" -0 -'
        action :run
  end




