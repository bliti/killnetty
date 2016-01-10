# killnetty

Useful when developing Spark applications.

Kill a netty instance created by Netbeans.
The instance is killed by getting the PID from the port number.

Whenever developing Spark applications with Netbeans 
the netty server will not stop when you stop the application in the IDE.
This script will kill the netty instance by using the default port "4567" used
by netty.

I spent a couple of days dealing with this issue and plan to turn this into a netbeans plugin.
This is a known bug in Netbeans that is not fixed due to some issue with Windows support.

If you spent hours searching for an answer this is it. :)

# Run 

Just run from the terminal in the directory you saved it:

  killnety.sh

# Run it from anywhere

To run it from any directory just make the script executable.

1. Go to the directory where killnetty.sh is.
2. Type:

    chmod u+x killnetty.sh

3. Then add the direcotry to your path by:

    export PATH="$PATH:~/NAME_OF_DIRECTORY"

Optional:

I chose to create a directory named "scripts" in my home directory.
Then I placed the killnetty.sh file inside it.
I then added the scripts directory to my path by running:

    export PATH="$PATH:~/scripts"

That way any future scripts can be saved and called from there.

# Why not put it in my /bin directory?

I was feeling lazy.
