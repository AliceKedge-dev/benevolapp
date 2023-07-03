import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="display-more"
export default class extends Controller {
  static targets=["text"]
  connect() {

    console.log("coucou")

  }
  displayText() {
    console.log(this.textTarget)
    this.textTarget.classList.toggle("half-visible")
  }
}
