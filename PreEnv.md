# docker
## image

[Dockerfile](Dockerfile)

`docker build -t centos7:docker .`

## container
`docker run -itd -v d:/github/ambari:/root/ambari --privileged=true --name='test' centos7:docker`

# Env
1. JDK_8
2. maven3.7.9
3. wget [py2.7.egg](https://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11-py2.7.egg#md5=fe1f997bc722265116870bc7919059ea)  and run `sh setuptools-0.6c11-py2.7.egg`

maven:
```bash
wget https://dlcdn.apache.org/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz --no-check-certificate
tar xf apache-maven-3.3.9-bin.tar.gz
cd apache-maven-3.3.9 && pwd
ln -sf /root/env/apache-maven-3.3.9/bin/mvn /usr/bin/mvn
```

~/.bashrc 

```bash
# JAVA CONFIG
export JAVA_HOME=/usr/lib/jvm/java-1.8.0
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
# mvn home
export PATH=/root/apache-maven-3.3.9/bin:$PATH
```

NodeJs
```bash
wget https://nodejs.org/dist/v10.9.0/node-v10.9.0-linux-x64.tar.gz
tar xvf node-v10.9.0-linux-x64.tar.gz
ln -sf /root/env/node-v10.9.0-linux-x64/bin/node /usr/bin/node
ln -sf /root/env/node-v10.9.0-linux-x64/bin/npm /usr/bin/npm
node -v
npm -v
```