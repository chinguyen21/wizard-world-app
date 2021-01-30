URL = "http://localhost:3000"


document.addEventListener("DOMContentLoaded", () => {
    addWizard()
    proveWizard()
    proveHouse()
    
})


const playaudio = (n) => {
    let audio = document.querySelector("audio")
    audio.volume = n
    audio.play()
}







   