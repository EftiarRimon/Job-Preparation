function myFunction(){
    document.getElementById("buttonPlus").addEventListener("click", increaseCount);
    document.getElementById("buttonMinus").addEventListener("click", decreaseCount);
    document.getElementById("buttonReset").addEventListener("click", resetCount);
    document.getElementById("buttonSave").addEventListener("click", saveCount);
    document.getElementById("buttonLoad").addEventListener("click", loadCount);     
    let count = 10;
    loadCount();

    function updateCount() {
       
        document.getElementById("counter").innerText = count;
    }
    updateCount();

    function increaseCount() {
        count++;
        updateCount();
    }

    function decreaseCount() {
        if(count >1)
        count--;
        updateCount();
    }       
    function resetCount() {
        count = 10;
        updateCount();
    }   
    function saveCount() {
        localStorage.setItem("count", count);
    }   
    function loadCount() {
        const savedCount = localStorage.getItem("count");   
        if (savedCount !== null) {
            count = parseInt(savedCount, 10);
            updateCount();
        }   else {  
            alert("No saved count found.");
        }       
    }

    window.increaseCount = increaseCount;
    window.decreaseCount = decreaseCount;
    window.resetCount = resetCount;
    window.saveCount = saveCount;
    window.loadCount = loadCount;       
}
