----------------------------------- layout.nut ---------------------------------

class exampleLayout extends Layout {
  button1 = null;
  worker  = null;
  constructor(layout_data){
    base.constructor(layout_data);
    button1 = findControlId("button1");
    button1.onclick = buttonClick;
  }
  function buttonClick(event){
    if (event.id=="button1"){
      if (event.type=="clicked"){
        worker = Worker("worker.nut", "workerClient", "worker_id");
        worker.setEventListener(onWorkerEvent);
        worker.start();
        worker.postMessage({ value = 1, name = "test"});
      }
    }
  }
  function onWorkerEvent(event){
    local workerid = event.id; /* "worker_id" */
    if (event.type=="finish"){
      ...
    }
    else if (event.type=="message"){
      local event_data = event.data;
    }
  }
}

----------------------------------- worker.nut ---------------------------------

class workerClient extends WorkerClient{
  constructor(id){
    ...
  }
  function onEvent(event){
    if (event.type=="start"){
      postMessage("Started");
      ...
    }
    else if (event.type=="message"){
      if (event.data.value==1){
        postMessage("Will Finish");
        finish();
      }
    }
  }
}