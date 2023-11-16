ros2 service call /kill turtlesim/srv/Kill “name: ‘turtle1’”
sleep 3
ros2 service call /spawn turtlesim/srv/Spawn "{x: 6, y: 6, theta: 0, name: ‘bang’}”
sleep 3
ros2 service call /bang/teleport_absolute turtlesim/srv/TeleportAbsolute “{x: 3, y: 3, theta: 0}"  
sleep 3
ros2 service call /bang/teleport_absolute turtlesim/srv/TeleportAbsolute “{x: 3, y: 6, theta: 0}"   
sleep 3
ros2 service call /bang/teleport_absolute turtlesim/srv/TeleportAbsolute “{x: 6, y: 3, theta: 0}"  
sleep 3
ros2 service call /bang/teleport_absolute turtlesim/srv/TeleportAbsolute “{x: 6, y: 6, theta: 0}" 
sleep 3
ros2 service call /bang/teleport_absolute turtlesim/srv/TeleportAbsolute “{x: 6, y: 3, theta: 0}"
sleep 3
ros2 action send_goal /bang/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 3.1416}"
sleep 3
ros2 service call /bang/teleport_absolute turtlesim/srv/TeleportAbsolute “{x: 3, y: 3, theta: 0}"
sleep 3
ros2 action send_goal /bang/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 2.3562}"
sleep 3
ros2 topic pub --once /bang/cmd_vel geometry_msgs/msg/Twist  "{linear: {x: 13.5, y: 0.0, z: 0.0} , angular: {x: 0.0, y: 0.0, z: -6.2819}}"
