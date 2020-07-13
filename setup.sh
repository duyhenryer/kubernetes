#!/bin/bash

command=$1

case "$command" in 

     "up" )
	echo "master up"
	echo "--------------------"
	cd master.xtl && vagrant up
	cd ..

	echo "worker-1 up"
	echo "--------------------"
	cd worker1.xtl && vagrant up
	cd ..

	echo "worker-2 up"
	echo "--------------------"
	cd worker2.xtl && vagrant up
	
	echo "vagrant up done"
	;;	
	
     "reload" )
	echo "master reload"
	echo "--------------------"
	cd master.xtl && vagrant reload
	cd ..

	echo "worker-1 reload"
	echo "--------------------"
	cd worker1.xtl && vagrant reload
	cd ..

	echo "worker-2 reload"
	echo "--------------------"
	cd worker2.xtl && vagrant reload

	echo "--------------------"
	echo "vagrant reload done"
	
        ;;
    * )
        echo "wrong deploy type!"
        ;;
esac
