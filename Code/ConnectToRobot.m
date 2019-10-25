% https://sites.google.com/a/asu.edu/fse100-cse-wiki/ev3-matlab-library-documentation

% Attempt to connect to the robot
brick = ConnectBrick('EV4');

% Test our tones
brick.playTone(100, 659, 200); %E5
pause(0.2);
brick.playTone(100, 622, 200); %D#5
pause(0.2);
brick.playTone(100, 659, 200); %E5
pause(0.2);
brick.playTone(100, 622, 200); %D#5
pause(0.2);
brick.playTone(100, 659, 200); %E5
pause(0.2);
brick.playTone(100, 494, 200); %B4
pause(0.2);
brick.playTone(100, 587, 200); %D5
pause(0.2);
brick.playTone(100, 523, 200); %C5
pause(0.2);
brick.playTone(100, 440, 200); %A4

% Display the current battery level
display(brick.GetBattLevel());