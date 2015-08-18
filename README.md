# apt_cache
docker apt cache server

    docker run -d -p 3142:3142 dockerimages/apt_cache
    
    
    ADDS It to your Existing IMAGE or NEW ONE ELSE YOU CAN SET IT AS ENV
    RUN  echo 'Acquire::http { Proxy "http://dockerhost:3142"; };' >> /etc/apt/apt.conf.d/01proxy
