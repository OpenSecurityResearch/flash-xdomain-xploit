Author: Gursev Singh Kalra (gursev.kalra@foundstone.com)

Bypassing Same Origin Policy with Flash and Insecure crossdomain.xml

Compiling and deploying the Proof of Concept ActionScript code
1. Download and install Apache Flex SDK. It comes with an ActionScript compiler.
2. Copy the ActionScript code to your local directory and name it XDomainXploit.as.
3. Change the values of readFrom and sendTo parameters to appropriate values as per your needs.
4. Compile the code with the mxmlc compiler to a Flash file by running the following command. The mxmlc compiler is shipped with Apache Flex.
	mxmlc XDomainXploit.as
5. Deploy the generated Swf and the provided HTML(xdm.html) files to enjoy the Flash goodness.

