import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['modal', 'button'];
  connect(){
    console.log('success');
  }
reveal(){
this.modalTarget.classList.toggle('modal');
this.modalTarget.classList.toggle('fade');
}
}
