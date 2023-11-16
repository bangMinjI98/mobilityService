ros2 service call /kill turtlesim/Kill "name: 'turtle1'"
sleep 3
ros2 service call /spawn turtlesim/srv/Spawn "{x: 5.5, y: 3, theta: 1.57, name: 'a'}" 
sleep 3
ros2 topic pub --once /a/cmd_vel geometry_msgs/msg/Twist  "{linear: {x: 5.0, y: 0.0, z: 0.0} , angular: {x: 0.0, y: 0.0, z: -6.2819}}"
sleep 3
ros2 action send_goal /a/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 1.5708}"
sleep 3
ros2 topic pub --once /a/cmd_vel geometry_msgs/msg/Twist  "{linear: {x: 5.0, y: 0.0, z: 0.0} , angular: {x: 0.0, y: 0.0, z: 0.0}}"
sleep 3
ros2 topic pub --once /a/cmd_vel geometry_msgs/msg/Twist  "{linear: {x: 2.5, y: 0.0, z: 0.0} , angular: {x: 0.0, y: 0.0, z: -3.1416}}"
sleep 3
ros2 action send_goal /a/rotate_absolute turtlesim/action/RotateAbsolute "{theta: -1.5708}"
sleep 3
ros2 topic pub --once /a/cmd_vel geometry_msgs/msg/Twist  "{linear: {x: 5.0, y: 0.0, z: 0.0} , angular: {x: 0.0, y: 0.0, z: 0.0}}"
