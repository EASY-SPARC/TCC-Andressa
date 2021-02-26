# CMake generated Testfile for 
# Source directory: /home/andressa/Documents/TCC-Andressa/ROS/workspace/src/robotiq_85_gripper/si_utils
# Build directory: /home/andressa/Documents/TCC-Andressa/ROS/workspace/build/si_utils
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test("_ctest_si_utils_roslaunch-check_launch" "/home/andressa/Documents/TCC-Andressa/ROS/workspace/build/si_utils/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/andressa/Documents/TCC-Andressa/ROS/workspace/build/si_utils/test_results/si_utils/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/andressa/Documents/TCC-Andressa/ROS/workspace/build/si_utils/test_results/si_utils" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/andressa/Documents/TCC-Andressa/ROS/workspace/build/si_utils/test_results/si_utils/roslaunch-check_launch.xml\" \"/home/andressa/Documents/TCC-Andressa/ROS/workspace/src/robotiq_85_gripper/si_utils/launch\" ")
set_tests_properties("_ctest_si_utils_roslaunch-check_launch" PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/melodic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/melodic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/andressa/Documents/TCC-Andressa/ROS/workspace/src/robotiq_85_gripper/si_utils/CMakeLists.txt;15;roslaunch_add_file_check;/home/andressa/Documents/TCC-Andressa/ROS/workspace/src/robotiq_85_gripper/si_utils/CMakeLists.txt;0;")
subdirs("gtest")
