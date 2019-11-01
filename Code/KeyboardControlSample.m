global key
InitKeyboard();
while (true)
    pause(0.1);
    switch key
        case 'uparrow'
            disp('Entered uparrow');
                brick.MoveMotor('A', -30);
                pause(1);
                brick.MoveMotor('B', 70);
                pause(3);
                brick.StopMotor('B');
                %brick.MoveMotorAngleRel('A', 40, -30, 'Brake')
            brick.StopMotor('B')
            disp('Stopped motor B');
        case 'downarrow'  
             brick.MoveMotorAngleRel('A', 40, -60, 'Brake');
             disp('Clutch in reverse!');
             brick.MoveMotor('B')
             
        case 'leftarrow'
            disp('Clutch in neutral!');
        case 'rightarrow'
              brick.MoveMotorAngleRel('A', 30, 30, 'Brake');
              disp('Clutch in forward!');
        case 0 % No key is being pressed
            
        case 'q' % press "q" to 
            brick.StopMotor('B')
            brick.StopMotor('A')
            break;
    end
end
CloseKeyboard();