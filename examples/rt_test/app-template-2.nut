class Control{
  constructor(control_data);
  function getId();
  function getText();
  function getType();
  ...
  
  /* abstract */
  function onClick(event);
  function onMessage(event); /* can be used for hooking message */
  function onDraw(drawEvent); /* can be used for custom control */
  ...
}

class ListItem extends Control{
  constructor(control_data);
  function clearItem();
  function addItem(itemdata);
  function delItem(id);
  ...
  
  /* abstract */
  function onItemClick(event);
  ...
}

class Layout{
  constructor(layout_data);
  function addControl(controlData);
  function getApplication();
  function close();
  function findControlId(id);
  ...
  
  /* abstract */
  function onShow();
  function onClose(); /* can return something into caller/prev layout */
  function onReturnEvent(event); /* dialog/layout onclose return */
  ...
}

class Application{
  constructor();
  function setNavigationItems(navigation_items_data);
  function setCurrentLayout(LayoutObject);
  function getCurrentLayout();
  function setTitle(title);
  function setPrimaryColor(color);
  function setPrimaryTextColor(color);
  function setPrimaryIconColor(color);
  function setIcon(icon);
  function setTools(tools_table);
  function clearTools();
  function addTools(id,title,icon,switch);
  function getTool(id);
  function setMenu(menu_table);
  function clearMenu();
  function addMenu(title,index);
  function getMenu(index);
  ...
  
  /* abstract */
  function navigationItemClick(id,holded);
  function onPause();
  function onResume();
  function onShow();
  function onDestroy();
  function onMessage(event); /* can be used for global message hook */
}