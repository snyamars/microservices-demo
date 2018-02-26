# microservices-demo

Original @ https://github.com/paulc4/microservices-demo

Changed the code to work with consul.


## Command Line

You may find it easier to view the different applications by running them from a command line since you can place the three windows side-by-side and watch their log output

To do this, open three CMD windows (Windows) or three Terminal windows (MacOS, Linux) and arrange so you can view them conveniently.

 1. In each window, change to the directory where you cloned the demo
 1. In the first window, build the application using `mvn clean package`
 1. You need to have a consul instance runing  and change the  configuration file with ip accordingly
 1. Switch to the second window and run: `java -jar target/microservice-demo-1.1.0.RELEASE.jar accounts` and again wait for
 it to start up
 1. In the third window run: `java -jar target/microservice-demo-1.1.0.RELEASE.jar web`
 1. In your favorite browser open the same two links: [http://localhost:2222](http://localhost:2222) and [http://localhost:3333](http://localhost:3333)

You should see servers being registered in the log output of the first (registration) window.
As you interact with the web-application ([http://localhost:3333](http://localhost:3333)) you should logging appear
in the second and third windows.

 1. In a new window, run up a second account-server using HTTP port 2223:
     * `java -jar target/microservice-demo-1.1.0.RELEASE.jar accounts 2223`
 1. Allow it to register itself
 1. Kill the first account-server and see the web-server switch to using the new account-server - no loss of service.

