import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="restaurant-data"
export default class extends Controller {
  static targets = ["form", "input", "tabs"]

  connect() {
    console.log(this.formTarget)
    console.log(this.inputTarget)
    console.log(this.tabsTarget)
  }

  handleChange() {
    const url = `dashboard?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.tabsTarget.innerHTML = data
    })
  }
}
