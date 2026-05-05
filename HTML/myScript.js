

console.log("JS loaded");
window.onload=function(){

 function multiply(a, b){
  return a * b;
 }

 const double = multiply.bind(null, 2);
 document.getElementById("output").innerHTML=double(5);

}