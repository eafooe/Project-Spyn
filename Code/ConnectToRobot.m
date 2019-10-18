% https://sites.google.com/a/asu.edu/fse100-cse-wiki/ev3-matlab-library-documentation

% Attempt to connect to the robot
brick = ConnectBrick('EV4');

% Play tone with a frequency of 800Hz for 0.500 seconds at 100% volume
brick.playTone(100, 800, 500);

% Display the current battery level
display(brick.GetBattLevel());