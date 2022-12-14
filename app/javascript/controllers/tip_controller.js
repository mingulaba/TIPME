import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tip"
export default class extends Controller {
  static targets = ["input", "five", "ten", "fifteen"]
  connect() {
    console.log("from tip controller")
    console.log(this.inputTarget)
    console.log(this.fiveTarget)
    console.log(this.tenTarget)
    console.log(this.fifteenTarget)
  }

  times_five(event) {
    event.preventDefault()
    this.inputTarget.value = "10"
  }

  times_ten(event) {
    event.preventDefault()
    this.inputTarget.value = "20"
  }

  times_fifteen(event) {
    event.preventDefault()
    this.inputTarget.value = "30"
  }
}
