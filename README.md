# d-lantern

1.docker pull sunshycn/d-lantern

#13128 your machine port, 3218 the docker internal port
2.docker run --rm --name lantern-srv -p 13128:3128 d-lantern > ~/lantern.log 2>~/lantern.error

3.set you http proxy port to 13128, then start to use.

4.restart docker daemon when your free capacity is running out. 
