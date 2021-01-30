

const renderCollection = (wizard) => {
    let container = document.getElementById("wizard-container")

    let div1 = document.createElement('div')
    div1.classList.add("card", "p-2", "m-2")
    div1.style = "width: 18rem;";
    // div1.style = "height: 1rem;";

    let div2 = document.createElement('div')
    div2.className = "card"

    // let img = document.createElement('img')
    // img.src = book.image
    // img.className = 'card-img-top'
    // img.id = 'book-image'
    let h4 = document.createElement('h4')
    h4.innerText = "Collection"

    let div3 = document.createElement('div')
    div3.classList.add("card-body", "collection")


    let p1 = document.createElement('p')
    p1.className = 'card-text'
    if (wizard.wand) {
        p1.innerText = `Wand: ${wizard.wand.name}`
    } else {
        p1.innerText = `No Wand`
    }
    
    let p2 = document.createElement('p')
    let ul = document.createElement('ul')
    p2.className = 'card-text'
    if (wizard.books) {
        p2.innerText = `Your books:`
        wizard.books.forEach(book => {
            let li = document.createElement('li')
            li.innerText = book.name
            ul.appendChild(li)
        })
    } else {
        p2.innerText = `No Book`
    }

    
    // let p3 = document.createElement('p3')
    // p3.className = "card-title"
    // p3.innerText = `Pet`

    container.append(div1)
    div1.appendChild(div2)
    div2.append(h4, div3)
    div3.append(p1, p2)
    p2.appendChild(ul)
}