#! /bin/bash
gnome-terminal --title="roscore" -x bash -c 'source ~/erasor_ws/devel/setup.bash; roscore; exec bash'
sleep 0.5

gnome-terminal --title="erasor" -x bash -c 'source ~/erasor_ws/devel/setup.bash; roslaunch erasor run_erasor.launch; exec bash'
sleep 1.0

gnome-terminal --title="rosbag" -x bash -c 'cd /home/luoteng/erasor_ws/bags; rosbag play --clock 05_2350_to_2670_w_interval_2_node.bag -r 1.0; exec bash'

