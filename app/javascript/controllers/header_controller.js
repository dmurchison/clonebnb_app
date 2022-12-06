import { Controller } from "@hotwired/stimulus"
import {enter, leave, toggle} from 'el-transition'


export default class extends Controller {
  static targets = ['openUserMenu', 'userAuthLink']

  connect() {
    this.openUserMenuTarget.addEventListener('click', this.toggleDropdownMenu, this.closeDropdownMenu)

    this.userAuthLinkTargets.forEach((link) => {
      link.addEventListener('click', (e) => {
        e.preventDefault();
        document.getElementById('modal-trigger').click();
      });
    });
  }

  toggleDropdownMenu = () => {
    toggle(document.getElementById("menu-dropdown-items"));
  }

  // closeDropdownMenu = (event) => {
  //   const dropdownMenuClicked = document.getElementById('menu-dropdown-items').contains(event.target);

  //   if (!dropdownMenuClicked) {
  //     leave(document.getElementById('menu-dropdown-items'));
  //   }
  // }

}
