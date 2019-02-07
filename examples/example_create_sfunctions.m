% Example for creating s-functions for encoding as well as decoding
% MAVLink messages

% See "examples_use_sfunctions.slx" for usage of these s-functions in
% Simulink

% Go to the top directory
this_dir = fileparts(mfilename('fullpath'));
dir_sep = regexp(this_dir, filesep, 'split');
cd(fullfile(dir_sep{1:end-1}));

% TODO: Identify if Mavlink v1 or v2 to be used (v1 is always supported)

% Select the MAVLink header files for messages we want to use
encode_filenames = {
    'include\mavlink\v1.0\common\mavlink_msg_hil_state_quaternion.h';
    %'include\mavlink\v1.0\common\mavlink_msg_hil_rc_inputs_raw.h';
    %'include\mavlink\v1.0\common\mavlink_msg_hil_sensor.h';
    %'include\mavlink\v1.0\common\mavlink_msg_hil_gps.h';
    %'include\mavlink\v1.0\common\mavlink_msg_hil_optical_flow.h';
    };

decode_filenames = {
    'include\mavlink\v1.0\common\mavlink_msg_hil_actuator_controls.h';
    };

%% Create encoder s-functions
% Calling create_sfun_encode will creates buses, header files, s-function
% cpp files, and will finally compile them. This will create one encoder
% s-function for each message

for i = 1:length(encode_filenames)
    create_sfun_encode(encode_filenames{i});
end


%% Create decider s-function
% Calling create_sfun_decode will creates buses, header files, s-function
% cpp file, and will finally compile it. This will create one decoder
% s-function in total

create_sfun_decode(decode_filenames);
