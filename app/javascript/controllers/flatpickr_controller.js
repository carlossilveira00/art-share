import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  // Inform the controller that it has two targets in the form, which are our inputs
  static targets = [ "startTime", "endTime", "finalValue", "daysLeft", "itemValue", "totalValue"]

  connect() {
    let start = ""
    let end = ""
    const finalValue = this.finalValueTarget
    const daysLeft = this.daysLeftTarget
    // Get the item price and pass it to integer
    const itemValue = (this.itemValueTarget.innerHTML.match(/[0-9]/g).join("") * 1)
    const totalValue = this.totalValueTarget

    flatpickr(this.startTimeTarget, {
      altInput: true,
        onClose: function(selectedDates, dateStr, instance){
          start = new Date(dateStr)
       }
    })

    flatpickr(this.endTimeTarget, {
      altInput: true,
        onClose: function(selectedDates, dateStr, instance){
          end = new Date(dateStr)
          let days_left = ((end.getTime() - start.getTime()) / (1000 * 3600 * 24))
          daysLeft.innerHTML = `${days_left} days`
          finalValue.value = itemValue * days_left

          // Multiply the price by the days
          // Assign the innerHTML as the total value
          totalValue.innerHTML = `$${itemValue * days_left}`
       }
    })

  }

}
