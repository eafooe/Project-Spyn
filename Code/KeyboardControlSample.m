global key
InitKeyboard();
while (true)
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
                pause(2.5);
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
                pause(2.5);
                % Stop moving
                brick.StopMotor('B');
                %brick.MoveMotorAngleRel('A', 40, -30, 'Brake')
            brick.StopMotor('B')
            disp('Stopped motor B');
        case 0 % No key is being pressed
            
        case 'q' % press "q" to 
            brick.StopMotor('B');
            brick.StopMotor('A');
            break;
    end
end
CloseKeyboard();