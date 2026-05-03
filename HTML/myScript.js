console.log("JS loaded");
window.onload=function(){

  const player1 = {name: "Messi"};
  const player2 ={name: "Cristiano"};
  const player3 ={name: "Neymar"}

  function Fifa(Wcup){
    return Wcup + this.name;
  }

  let message=Fifa.call(player1,"World cup Winner is : ");


 document.getElementById("output").innerHTML=message;
}