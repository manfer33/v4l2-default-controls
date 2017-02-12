# v4l2-default-controls
Shell Script to set all parameters to default value of a camera using v4l2 tools

### How to use
You can use camera default as part of another shell code, or any other language through a system call, to make sure you didn't forget to set the default value after many tests. 

This code can be useful too by himself to reset parameters of a camera without reconnect connector physically.

#### Little tip
Uncomment line ```# echo ${param[$i]} -- ${default_value[$i]} - ${current_value[$i]}``` to check parameters which were changed 

### Next step?
If you think can improve or add new features to this code just fork it! I have no problem to check new ideas
