
::print("\n\nTest Libaroma\n\n");

::print("Sleep\n");
libaroma.sleep(2000);

::print("Tick: "+libaroma.tick()+"\n");

local stream = libaroma.stream("file:///sdcard/test.nut");
if (stream){
  ::print("Load Stream OK = "+stream+"\n");
  local streamStr = libaroma.stream_to_string(stream);
  if (streamStr){
    ::print("Got Stream STR = \n---------\n"+streamStr+"\n-------\n\n");
  }
  ::print("OK End And free Stream\n");
  libaroma.stream_close(stream);
  stream=null;
}
else{
  ::print("Load Stream Error\n");
}




local app = Application();
app.setPrimaryColor("#446688");
app.setTitle("Main App");

app.start();

while (app.isActive()){
  local ret=app.poll();
  
  
  if (ret.id==1){
    if (ret.param==1){
      if (ret.command==1){
        app.exit();
      }
      else if (ret.command==2){
        Application.newApplication("test");
      }
    }
  }
}

