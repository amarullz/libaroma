------------------------------- otherlayout.nut --------------------------------
class otherLayout extends Layout {
  button1 = null;
  button2 = null;
  constructor(layout_data){
    base.constructor(layout_data);
    button1 = findControlId("button1");
    button1.onclick = buttonClick;
  }
  function buttonClick(event){
    if (event.id=="button1"){
      if (event.type=="clicked"){
        close(); /* will back to previous layout */
      }
    }
  }
}



------------------------------- mainlayout.nut ---------------------------------
include("otherlayout.nut");
class mainMenu extends Layout {
  button1 = null;
  button2 = null;
  constructor(layout_data){
    base.constructor(layout_data);
    button1 = findControlId("button1");
    button1.onclick = buttonClick;
    button2 = findControlId("button2");
    button2.onclick = buttonClick;
  }
  function onShow(){ }
  function onClose(){ }
  function buttonClick(event){
    if (event.id=="button1"){
      if (event.type=="clicked"){
        getApplication().setCurrentLayout(otherLayout("@layout1"));
      }
    }
    else if (event.id=="button2"){
      if (event.type=="holded"){
        Application.alert("Button 2 Holded");
        close();
        /* will close layout and exit 
          or can call getApplication().exit();
        */
      }
      else if (event.type=="clicked"){
        Application.alert("Button 2 Clicked");
      }
    }
  }
}



----------------------------------- app.nut ------------------------------------
include("mainlayout.nut");
class myApp extends Application{
  constructor(){
    base.constructor();
    setNavigationItem([
      { id=1,
        type="image",
        image="res:///img/paralax.jpg",
        paralax=true,
        clickable=true
      },
      { id="exit", type="menu", title="Exit", icon="@exit" }
    ]);
    
    local mainMenuLayout = mainMenu("@layout1");
    
    setCurrentLayout(mainMenuLayout);
  }
  
  function navigationItemClick(id,holded){
    if (id=="exit"){
      exit(); /* force exit application */
    }
  }
}

local app = myApp();
app.start();



---------------------------- app.nut (other style) -----------------------------
include("mainlayout.nut");
local app = Application();
app.setNavigationItem([
  { id=1,
    type="image",
    image="res:///img/paralax.jpg",
    paralax=true,
    clickable=true
  },
  { id="exit", type="menu", title="Exit", icon="@exit" }
]);
app.setCurrentLayout(mainMenu("@layout1"));
app::navigationItemClick=function(id,holded){
  if (id=="exit"){
    exit(); /* force exit application */
  }
};
app.start();


--------------------------------------------------------------------------------
Layout can also directly pass json/table variable like this:

  /* table */
  mainMenu({
    title = "Main Menu",
    primaryColor = "#446688",
    ...
  });
  
  
  /* json */
  mainMenu({
    "title" : "Main Menu",
    "primaryColor" : "#446688",
    ...
  });

--------------------------------- layout1.json ---------------------------------
/*
  icon value :
    -> # = system wide icons ( #drawer, #backarrow, #add, #delete, #check )
    -> @ = resource icon ( @XXX = res:///icon/XXdpi/XXX.png ),
    -> res:///
    -> file:///
    -> zip:///
    -> ... any acceptable uri
*/
{
  title : "Main Menu",  /* appbar title */
  primaryColor : "#446688",
  primaryTextColor : "#ffffff", /* optional */
  primaryIconColor : "#000000", /* optional */
  icon  : "#drawer",
  tools : [ /* appbar tools */
    {
      icon  : "res:///icon/hdpi/search.png",
      id    : "search",
      title : "Search"
    },
    {
      icon  : "@plus",
      id    : "add",
      title : "Add Menu"
    },
    {
      switch  : true, /* appbar switch tools */
      checked : false,
      id      : "editmode",
      title   : "Edit Mode"
    }
  ],
  menu  : { /* appbar mainmenu */
    /* [ : ]
     *   Help
     *   About
     *   --------------
     *   Exit
     */
    id  : "mainmenu",
    items : [
      "Help",
      "About",
      "-",
      "Exit"
    ]
  },
  control : [
    {
      type : "button",
      id   : "button1",
      text : "Button 1",
      pos  : [ 0, 0, "50%", 24 ] /* x, y, w, h */
    },
    {
      type : "button",
      id   : "button2",
      text : "Button 2",
      pos  : [ "50%", 0, "50%", 24 ] /* x, y, w, h */
    },
    {
      type : "list",
      id   : "list1",
      pos  : [ 0, 24, "100%", "100%" ],
      items : [
        /* Example items:
        {
          id   : 1,
          type : "menu",
          icon : "@menu",
          title: "Test Item",
          secondaryText : "This is secondary text"
        }
        */
      ]
    }
  ]
}

/*
  format:
  -------
  [ CONTROL_TYPE, ATTRIBUTE_OBJECT, CONTENTS ]
*/

[
  "button",
  {
    id:"Button1",
    x:"0dp",
    y:"0dp",
    w:"50%",
    h:"36dp",
    text:"<~btn1-text>"
  }
],
[
  "list",
  {
    id:"List1",
    pos:["0dp","36dp","100%","100%"], /* x,y,w,h */
    scrollbar:"handle"
  },
  [
  ]
}