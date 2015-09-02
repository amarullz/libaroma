function testThread1(){
  local i;
  for (i=0;i<10;i++){
    ::print("Inside Thread #1 Sleep "+i+"\n");
    libaroma.sleep(1000);
  }
  
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
}

function testThread2(){
  local i;
  for (i=0;i<10;i++){
    ::print("Inside Thread #2 Sleep "+i+"\n");
    libaroma.sleep(1500);
    ::print("#2 - Tick: "+libaroma.tick()+"\n");
  }
}

  


local ct1 = ::newthread(testThread1);
local ct2 = ::newthread(testThread2);
ct1.call();
ct2.call();

local app = Application();
app.setPrimaryColor("#446688");
app.setTitle("Main App");

app.start();

while (app.isActive()){
  local ret=app.poll();
  
  
  if (ret.id==1){
    if (ret.param==1){
      if (ret.command==1){
        /*app.exit();*/
        break;
      }
      else if (ret.command==2){
        Application.newApplication("test");
      }
    }
  }
}

