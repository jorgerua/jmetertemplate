# JMeter ARM template to Performance Test Azure Applications

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fjorgerua%2Fjmetertemplate%2Fmaster%2Ftemplate.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fjorgerua%2Fjmetertemplate%2Fmaster%2Ftemplate.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template deploys to a given Virtual Network/subnet a JMeter master virtual machine and a JMeter slave scale set. All machines uses linux Ubuntu, Java 8 and JMeter 3.2.

Simple steps to start performance testing an application would be:

1. Deploy this JMeter ARM template to some different subnet than the target application. Parameters are:

 * `Unique-env-prefix`:  Prefix used to resources deployed in the resource group. Example: app1 
 * `Virtual-network-name`:   Virtual Network where resources will be deployed. Virtual Network will not be created. It should already exists. 
 * `Subnet-name`:  Subnet where resources will be deployed. Different from target application is recommended. 
 * `Admin-username`:  Linux machines admin username. Should be used to ssh. 
 * `Admin-publickey`:  Password is disabled so, use ssh public key generated in your machine to log in. 

2. JMeter master virtual machine has the public IP to SSH

3. Copy .JMX files to /home/[admin-username] folder

4. Run tests with following command example:
```
sh /usr/share/apache-jmeter-3.2/bin/jmeter.sh -n -t [your .jmx file] -r -l [output file] -e
```

Any feedback is appreciated!! Hope you start performance testing your Azure applications!

Rua