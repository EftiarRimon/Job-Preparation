

console.log("JS loaded");
window.onload=function(){

  const person={
    firstName:"Abida Sultana",
    lastName:"Juthy",
    fullName: function(){
      return this.firstName+" "+this.lastName;

    }
  }
 
  const person1={
    firstName:"eftiare",
    lastName:"rimon"
  }

  let fullName = person.fullName.bind(person);

  document.getElementById("output").innerHTML=fullName();

}