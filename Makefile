default: add_route del_route

add_route.o: add_route_ioctl.c
	gcc -c add_route_ioctl.c -o add_route_ioctl.o

add_route: add_route_ioctl.o
	gcc add_route_ioctl.o -o add_route_ioctl

del_route.o: del_route_ioctl.c
	gcc -c del_route_ioctl.c -o del_route_ioctl.o

del_route: del_route_ioctl.o
	gcc del_route_ioctl.o -o del_route_ioctl

clean:
	-rm -f del_route_ioctl.o add_route_ioctl.o
	-rm -f del_route_ioctl add_route_ioctl
