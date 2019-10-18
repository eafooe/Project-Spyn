% https://sites.google.com/a/asu.edu/fse100-cse-wiki/ev3-matlab-library-documentation

% Attempt to connect to the robot
brick = ConnectBrick('EV4');

% Test our tones
brick.playTone(100, 659, 400); %E5
brick.playTone(100, 622, 400); %D#5
brick.playTone(100, 659, 400); %E5
brick.playTone(100, 622, 400); %D#5
brick.playTone(100, 659, 400); %E5
brick.playTone(100, 494, 400); %B4
brick.playTone(100, 587, 400); %D5
brick.playTone(100, 523, 400); %C5
brick.playTone(100, 440, 400); %A4

% Display the current battery level
display(brick.GetBattLevel());