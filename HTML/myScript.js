

console.log("JS loaded");




  function myCounter(){
    let counter=0;
   
      counter++;
      return counter;
    };
    

  
  const add =myCounter();

  window.myFunction = function (){
    document.getElementById("demo").innerHTML=add();
  }


