

const proveWizard = () => {
     let form = document.querySelector(".ui2")
     form.addEventListener('submit', (event) => {
        event.preventDefault()
        if (Object.values(form.children).find((child) => child.id == "alert-wrong-pw")){
            Object.values(form.children).find((child) => child.id == "alert-wrong-pw").remove()
        }
        checkWizard = {
            name: event.target.name.value, 
            password: event.target.password.value
        }
        reqPackage = {
            method: "POST", 
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(checkWizard)
        }
        fetch(`${URL}/checkwizard`, reqPackage)
        .then(res => res.json())
        .then(res_status => {
            if (res_status.status != 200) {
                let p = document.createElement('p')
                p.id = "alert-wrong-pw"
                p.innerText = "Wrong Wizard Code. Are you a Traitor?"
                form.appendChild(p)
                
            } else {
                let wizard = JSON.parse(res_status.wizard)
                SESSION_ID = res_status.session_id
                renderWizard(wizard);
                renderCollection(wizard);
                getWands(wizard);
                getBooks(wizard);
                form.classList.remove('show')
                playaudio(0.05);
                document.querySelector('#wizard-information').style.display = "block"
                 document.querySelector('#wands-information').style.display = "block"
                 document.querySelector('#books-information').style.display = "block"
                document.querySelectorAll(".transition").forEach(t => t.style.display = "block")
            }
        })
        form.reset()
    })

}


const addWizard = () => {
    let form = document.querySelector(".ui1")
    form.addEventListener('submit', (event) => {
        event.preventDefault()
        if (Object.values(form.children).find((child) => child.id == "alert-wrong-pw")){
            Object.values(form.children).find((child) => child.id == "alert-wrong-pw").remove()
        } 
        newWizard = {
            password: event.target.password.value, 
            password_confirmation: event.target.password_confirmation.value, 
            name: event.target.name.value, 
            age: event.target.age.value,
            blood: event.target.blood.value,
            image: event.target.photo.value
        }
        reqPackage = {
            method: "POST", 
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(newWizard)
        }
        fetch(`${URL}/wizards`, reqPackage)
        .then(res => res.json())
                .then(res_status => {
            if (res_status.status != 200) {
                res_status.errors.forEach(error => {
                    let p = document.createElement('p')
                    p.id = "alert-wrong-pw"
                    p.innerText = error
                    form.appendChild(p)
                })
                
            } else {
                let wizard = JSON.parse(res_status.wizard)
                SESSION_ID = res_status.session_id
                renderWizard(wizard);
                renderCollection(wizard);
                getWands(wizard);
                getBooks(wizard);
                playaudio(0.05);
                form.classList.remove('show')
                
                 document.querySelector('#wizard-information').style.display = "block"
                 document.querySelector('#wands-information').style.display = "block"
                 document.querySelector('#books-information').style.display = "block"
                document.querySelectorAll(".transition").forEach(t => t.style.display = "block")
            }
        })
       form.reset()
    })
}

const updateWizard = (event, wizard) => {
    editWizard = {
        name: event.target.name.value,
        age: event.target.age.value,
        blood: event.target.blood.value
    }

    fetch(`${URL}/wizards/${wizard.id}`, {
        headers: {"Content-Type": "application/json"},
        method: "PATCH",
        body: JSON.stringify(editWizard)
    })
    .then(res => res.json())
    .then(wizard => {
        document.getElementById(`name-${wizard.id}`).innerText = wizard.name
        document.getElementById(`age-${wizard.id}`).innerText = `Age: ${wizard.age}`
        document.getElementById(`blood-${wizard.id}`).innerText = `Blood: ${wizard.blood}`
    })
     document.getElementById(`edit-wizard-${wizard.id}`).classList.remove("show");

}

