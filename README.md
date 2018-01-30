# rs-cartographies
Dashboards on research scientists publications from HAL data

Build docker images :

   ```docker build -t rs-carto .```

then run it: 

   ```docker run -p 8081:8081 -ti rs-carto polymer serve -H 0.0.0.0 -p 8081```

You might have to use ```sudo```