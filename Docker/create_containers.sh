echo -n "Enter name of file with usernames: "
read file
while read user
    do 
        docker create -it --name $user docker_list_image /bin/bash
    done < $file
