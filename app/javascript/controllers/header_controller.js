import { Controller } from "@hotwired/stimulus"
import {enter, leave, toggle} from 'el-transition'


export default class extends Controller {
  static targets = ['openUserMenu', 'deviseAuthLink']

  connect() {
    this.openUserMenuTarget.addEventListener('click', this.toggleDropdownMenu, this.closeDropdownMenu)

    this.deviseAuthLinkTargets.forEach((link) => {
    
      link.addEventListener('click', () => {
        console.log('This is the deviseAuthLinks');
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
