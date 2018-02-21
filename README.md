# rs-cartographies
Dashboards on research scientists publications from HAL data

#### Using Docker
Build docker image :

   ```docker build -t rs-carto .```

then run it: 

   ```docker run -p 8081:8081 -ti rs-carto```

You might have to run them as ```sudo```

#### Without Docker
Required :
 - Node > 6.0
 - Bower
 
Run the commands in the Dockerfile that have the ```##cmd``` flag above them  