ros2 service call /kill turtlesim/Kill "name: 'turtle1'"
sleep 3
ros2 service call /spawn turtlesim/srv/Spawn "{x: 5.5, y: 5, theta: 1.57, name: 'b'}"
sleep 3
ros2 service call /spawn turtlesim/srv/Spawn "{x: 5.5, y: 5, theta: 1.57, name: 'c'}"
sleep 3
ros2 action send_goal /b/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 1.5708}"
sleep 3
ros2 action send_goal /c/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 1.5708}"
sleep 3
ros2 topic pub --once /b/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 7.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -6.2819}}"
sleep 3
ros2 topic pub --once /c/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 10.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -6.2819}}"
sleep 3
ros2 topic pub --once /c/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 5.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -3.1416}}"
sleep 3
ros2 action send_goal /c/rotate_absolute turtlesim/action/RotateAbsolute "{theta: 1.5708}"
