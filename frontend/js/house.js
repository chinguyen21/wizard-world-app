


const proveHouse = () => {
     let alert_form = document.querySelector(".ui3")
     alert_form.addEventListener('submit', (event) => {
        event.preventDefault()
        if (Object.values(alert_form.children).find((child) => child.id == "alert-wrong-pw")){
            Object.values(alert_form.children).find((child) => child.id == "alert-wrong-pw").remove()
        }
        checkHouse = {
            name: event.target.name.value, 
            password: event.target.password.value
        }
        reqPackage = {
            method: "POST", 
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(checkHouse)
        }
        fetch(`${URL}/checkhouse`, reqPackage)
        .then(res => res.json())
       .then(res_status => {
            if (res_status.status != 200) {
                let p = document.createElement('p')
                p.id = "alert-wrong-pw"
                p.innerText = "Wrong House Code. Are you Voldermort?"
                alert_form.appendChild(p)
                
            } else {
                let house = JSON.parse(res_status.house)
                alert_form.classList.remove('show')
                playaudio(0.05)
                getWizard(house)
                document.querySelector('#wizard-information').style.display = "block"
                transition = document.querySelector(".transition")
                transition.style.display = "block"
                transition.childNodes[1].innerText = `All wizard of ${house.name}`
                transition.childNodes[1].appendChild(document.createElement('span'))
            }
        })
        alert_form.reset()
  })

}

const sortHouse = (wizard) => {
    newWizHouse = {
        wizard_id: wizard.id
    }
    // debugger
    fetch(`${URL}/wizhouses`, {
        headers: {"Content-Type": "application/json"},
        method: "POST",
        body: JSON.stringify(newWizHouse)
    })
    .then(res => res.json())
    .then(wizHouse => {
        // debugger
        document.querySelector(`#house-${wizHouse.wizard_id}`).innerText = `House: ${wizHouse.house.name}`
        document.querySelector(`#body-${wizard.id}`).childNodes[4].id = `sort-${wizHouse.id}`
    })
}


const leaveHouse = (event) => {
    // debugger
    wiz_house_id = parseInt(event.target.id.split("-")[1])
    fetch(`${URL}/wizhouses/${wiz_house_id}`, {
        method: "DELETE"
    })
    .then(event.target.parentNode.childNodes[3].innerText = "House: Undefined")
}