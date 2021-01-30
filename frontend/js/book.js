



const getBooks = async(wizard) => {
    const res = await fetch(`${URL}/books`)
    const dataBooks = await res.json()
    dataBooks.forEach(book => renderBook(book, wizard))
}

const renderBook = (book, wizard) => {
    let container_book = document.getElementById("books-container")

    let div1 = document.createElement('div')
    div1.classList.add("card", "p-2", "m-2")
    div1.style = "width: 15rem;";
    // div1.style = "height: 1rem;";

    let div2 = document.createElement('div')
    div2.className = "card"

    let img = document.createElement('img')
    img.src = book.image
    img.className = 'card-img-top'
    img.id = 'book-image'

    let div3 = document.createElement('div')
    div3.className = "card-body"
    div3.id = `body-${book.id}`

    let h5 = document.createElement('h5')
    h5.className = "card-title"
    h5.id = `name-${book.id}`
    h5.innerText = book.name

    let p1 = document.createElement('p')
    p1.className = 'card-text'
    p1.id = `author-${book.id}`
    p1.innerText = `Author: ${book.author}`

    let p2 = document.createElement('p')
    p2.className = 'card-text'
    p2.id = `subject-${book.id}`
    p2.innerText = `Subject: ${book.subject}`

    let button = document.createElement('button')
    button.classList.add("btn", "btn-primary", "btn-sm")
    
    if (wizard.books.find(b => b.name == book.name)) {
      button.innerText = "Bought"
    } else {
      button.innerText = "Buy it"
      button.addEventListener('click', () => {
      if (button.innerText == "BUY IT") {
        buyBook(book)
        button.innerText = "Bought"
          }
      })
    } 




    container_book.append(div1)
    div1.appendChild(div2)
    div2.append(img, div3)
    div3.append(h5, p1, p2, button)
}


const buyBook = (book) => {
  newWizBook = {
    wizard_id: SESSION_ID,
    book_id: book.id
  }

  fetch(`${URL}/wizbooks`, {
    method: "POST",
    headers: {"Content-Type": "application/json"},
    body: JSON.stringify(newWizBook)
  })
  .then(res => res.json())
  .then(res_status => {
              wiz_book = JSON.parse(res_status.wiz_book)
              let collection = document.querySelector(".collection")
              let li = document.createElement('li')
              li.innerText = wiz_book.book.name
              collection.childNodes[1].appendChild(li)
    })
}