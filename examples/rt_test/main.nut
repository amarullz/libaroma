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

