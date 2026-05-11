

console.log("JS loaded");
window.onload=function(){

let count=0;
function add(){
 
  
  count++;
  return count;
}

add();
add();
add();



document.getElementById("output").innerHTML=add();
}