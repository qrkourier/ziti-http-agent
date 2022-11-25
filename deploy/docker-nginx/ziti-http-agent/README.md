
Run the provided script or perform equivalent steps to provide a private key
and TLS server certificate in this directory:

* `fullchain.pem`: the server certificate
* `privkey.pem`: the private key for the server certificate

This doesn't need to be a third-party verifiable server certificate because it
only protects the communication between nginx and the Ziti HTTP agent.
