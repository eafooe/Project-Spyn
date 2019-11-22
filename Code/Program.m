%brick = ConnectBrick('EV4');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% VARIABLES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global key;

white = 6, red = 5, yellow = 4, green = 3;
brick.SetColorMode(1, 2);
distance = 0;

while(true)
    pause(0.1);
    color = brick.ColorCode(1); %Read Color to determine instruction
    switch color
%CASE WHITE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        case white
            % Check if wall is present
            wallIsPresent = (brick.UltrasonicDist(2) < 50);
            % If so, rotate the robot counter-clockwise until no wall is
            % present
            if (wallIsPresent)
                disp('Wall is present');
                while (wallIsPresent)
                    brick.MoveMotor('A', 30);
                    pause(1);
                    brick.MoveMotor('B', -70);
                    pause(3.0);
                    brick.StopMotor('B');
                    wallIsPresent = (brick.UltrasonicDist(2) < 50);
                end
               
            end
             % Once no wall is present, rotate the robot 90 deg clockwise
                % After this rotation, the robot should have a clear path in
                % front of it.
                disp('Wall no longer present');
                brick.MoveMotor('A', 30);
                pause(1);
                brick.MoveMotor('B', 70);
                pause(3.0);
                brick.StopMotor('B');
                
            disp('Wall not present');
            % Moves the clutch in the forward direction
                brick.MoveMotor('A', -30);
                % Waits for 
            i = 0;
            for i=0:1:70
                
                   color = brick.ColorCode(1);
                   if(color == red)
                       break;
                   end
                   brick.MoveMotor('B', 70);
                   pause(0.1);
            end
                    
            brick.StopMotor('B');
%CASE RED %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        case red
            % Stop for two seconds
            brick.StopAllMotors();
           
           %Drop passenger 
%CASE YELLOW %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PASSENGER PICK-UP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        case yellow
            InitKeyboard();
             in_yellow = true;
while (in_yellow)
    disp('In yellow section');
    pause(0.1);
    switch key
        case 'uparrow'
            disp('Entered up arrow');
                % Moves the clutch in the forward direction
                brick.MoveMotor('A', -30);
                % Waits for the clutch's movement to be completed
                pause(1);
                % Move the robot at 70% power
                brick.MoveMotor('B', 70);
                % Keep moving for 2.5 seconds
                pause(2.5);
                % Stop moving
                brick.StopMotor('B');
                %brick.MoveMotorAngleRel('A', 40, -30, 'Brake')
            brick.StopMotor('B')
            disp('Stopped motor B');
        case 'downarrow'
            disp('Entered up arrow');
                % Moves the clutch in the forward direction
                brick.MoveMotor('A', -30);
                % Waits for the clutch's movement to be completed
                pause(1);
                % Move the robot at 70% power
                brick.MoveMotor('B', -70);
                % Keep moving for 2.5 seconds
                pause(2.5);
                % Stop moving
                brick.StopMotor('B');
                %brick.MoveMotorAngleRel('A', 40, -30, 'Brake')
            brick.StopMotor('B')
            disp('Stopped motor B');
        case 'leftarrow'
              disp('Entered down arrow');
                % Moves the clutch in the backward direction
                brick.MoveMotor('A', 30);
                % Waits for the clutch's movement to be completed
                pause(1);
                % Move the robot at 70% power
                brick.MoveMotor('B', -70);
                % Keep moving for 2.5 seconds
                pause(0.5);
                % Stop moving
                brick.StopMotor('B');
                %brick.MoveMotorAngleRel('A', 40, -30, 'Brake')
            brick.StopMotor('B')
            disp('Stopped motor B');
        case 'rightarrow'
            disp('Entered down arrow');
                % Moves the clutch in the backward direction
                brick.MoveMotor('A', 30);
                % Waits for the clutch's movement to be completed
                pause(1);
                % Move the robot at 70% power
                brick.MoveMotor('B', 70);
                % Keep moving for 2.5 seconds
                pause(0.5);
                % Stop moving
                brick.StopMotor('B');
                %brick.MoveMotorAngleRel('A', 40, -30, 'Brake')
            brick.StopMotor('B')
            disp('Stopped motor B');
        case 0 % No key is being pressed
        case 'p' % pickup and dropoff
            brick.MoveMotor('C', 40);
            pause(2);
            brick.StopMotor('C');
        case 'r' % release passenger
             brick.MoveMotor('C', -40);
            pause(2);
            brick.StopMotor('C');
        case 'q' % press "q" to 
            brick.StopMotor('B');
            brick.StopMotor('A');
            % Moves the clutch in the forward direction
                brick.MoveMotor('A', -30);
                % Waits for the clutch's movement to be completed
                pause(1);
            disp('Exiting keyboard control');
            in_yellow = false;
    end
end
CloseKeyboard();
           brick.StopAllMotors();
            %Fetch passenger
%CASE GREEN %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PASSENGER DROP-OFF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        case green
           brick.StopAllMotors();
           InitKeyboard();
           in_green = true;
while (in_green)
    disp('In green section');
    pause(0.1);
    switch key
        case 'uparrow'
            disp('Entered up arrow');
                % Moves the clutch in the forward direction
                brick.MoveMotor('A', -30);
                % Waits for the clutch's movement to be completed
                pause(1);
                % Move the robot at 70% power
                brick.MoveMotor('B', 70);
                % Keep moving for 2.5 seconds
                pause(2.5);
                % Stop moving
                brick.StopMotor('B');
                %brick.MoveMotorAngleRel('A', 40, -30, 'Brake')
            brick.StopMotor('B')
            disp('Stopped motor B');
        case 'downarrow'
            disp('Entered up arrow');
                % Moves the clutch in the forward direction
                brick.MoveMotor('A', -30);
                % Waits for the clutch's movement to be completed
                pause(1);
                % Move the robot at 70% power
                brick.MoveMotor('B', -70);
                % Keep moving for 2.5 seconds
                pause(2.5);
                % Stop moving
                brick.StopMotor('B');
                %brick.MoveMotorAngleRel('A', 40, -30, 'Brake')
            brick.StopMotor('B')
            disp('Stopped motor B');
        case 'leftarrow'
              disp('Entered down arrow');
                % Moves the clutch in the backward direction
                brick.MoveMotor('A', 30);
                % Waits for the clutch's movement to be completed
                pause(1);
                % Move the robot at 70% power
                brick.MoveMotor('B', -70);
                % Keep moving for 2.5 seconds
                pause(0.5);
                % Stop moving
                brick.StopMotor('B');
                %brick.MoveMotorAngleRel('A', 40, -30, 'Brake')
            brick.StopMotor('B')
            disp('Stopped motor B');
        case 'rightarrow'
            disp('Entered down arrow');
                % Moves the clutch in the backward direction
                brick.MoveMotor('A', 30);
                % Waits for the clutch's movement to be completed
                pause(1);
                % Move the robot at 70% power
                brick.MoveMotor('B', 70);
                % Keep moving for 2.5 seconds
                pause(1.5);
                % Stop moving
                brick.StopMotor('B');
                %brick.MoveMotorAngleRel('A', 40, -30, 'Brake')
            brick.StopMotor('B')
            disp('Stopped motor B');
        case 0 % No key is being pressed
        case 'p' % pickup and dropoff
            brick.MoveMotor('C', 40);
            pause(2);
            brick.StopMotor('C');
        case 'r' % release passenger
             brick.MoveMotor('C', -40);
            pause(2);
            brick.StopMotor('C');
        case 'q' % press "q" to 
            brick.StopMotor('B');
            brick.StopMotor('A');
            disp('Exiting keyboard control');
            break;
    end
    break;
    CloseKeyboard();
end
           %Drop passenger 
    end
end

CloseKeyboard();
brick.StopAllMotors();
