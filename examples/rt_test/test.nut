local app = Application();
app.setPrimaryColor("#666666");
app.setTitle("Test App");

app.start();

while (app.isActive()){
  local ret=app.poll();
  
  
  if (ret.id==1){
    if (ret.param==1){
      if (ret.command==1){
        app.exit();
      }
    }
  }
}

