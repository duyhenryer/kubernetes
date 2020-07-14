#!/bin/bash

command=$1

case "$command" in 

     "up" )
	echo "master up"
	echo "--------------------"
	cd master && vagrant up
	cd ..

	echo "worker-1 up"
	echo "--------------------"
	cd worker1 && vagrant up
	cd ..

	echo "worker-2 up"
	echo "--------------------"
	cd worker2 && vagrant up
	
	echo "vagrant up done"
	;;	
	
     "reload" )
	echo "master reload"
	echo "--------------------"
	cd master && vagrant reload
	cd ..

	echo "worker-1 reload"
	echo "--------------------"
	cd worker1 && vagrant reload
	cd ..

	echo "worker-2 reload"
	echo "--------------------"
	cd worker2 && vagrant reload

	echo "--------------------"
	echo "vagrant reload done"
	
    ;;
    * )
    echo "wrong type!"
    ;;
esac
