import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="restaurant-data"
export default class extends Controller {
  static targets = ["form", "input", "list"]

  connect() {
    console.log(this.formTarget)
    console.log(this.inputTarget)
    console.log(this.listTarget)
  }

  handleChange(event) {
    const url = `dashboard?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.innerHTML = data
    })
  }
}
