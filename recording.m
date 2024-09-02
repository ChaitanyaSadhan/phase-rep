clear ;close; clc;
audiodevreset
record =1;


if record==1
fs=8000;
record = audiorecorder(fs,8,1,-1);
duration = 20;

display("recording now");
recordblocking(record,duration);
display("recording stopped");
audio_data = getaudiodata(record);
%play(record);
else
    display('audio playing');
    sound(audio_data,8000);
    display('audio finished playing')
end