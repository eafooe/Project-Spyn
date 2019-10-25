global key
InitKeyboard();

while (true)
    pause(0.1);
    switch key
        case 'uparrow'
            disp('Up arrow pressed!');
        case 'downarrow'
            disp('Down arrow pressed!');
        case 'leftarrow'
            disp('Left arrow pressed!');
        case 'rightarrow'
            disp('Right arrow pressed!');
        case 0 % No key is being pressed
            disp('No key pressed');
        case 'q' % press "q" to quit
            break;
    end
end
CloseKeyboard();
         