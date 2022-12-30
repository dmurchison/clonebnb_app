import { Controller } from '@hotwired/stimulus';
import { getDistance, convertDistance } from 'geolib';
import { isEmpty } from 'lodash-es';

export default class extends Controller {
  static targets = ['property']

  connect() {
    // console.log(this.element.dataset.latitude);
    // console.log(this.element.dataset.longitude);
    

    if (isEmpty(this.element.dataset.latitude) && isEmpty(this.element.dataset.longitude)) {
      window.navigator.geolocation.getCurrentPosition((position) => {
        this.setUserCoordinates(position.coords);
        this.setDistanceText();
      });
    } else {
      this.setDistanceText();
    }
  }

  setUserCoordinates(coords) {
    this.element.dataset.latitude = coords.latitude;
    this.element.dataset.longitude = coords.longitude;
  }

  getUserCoordinates() {
    return {
      latitude: this.element.dataset.latitude,
      longitude: this.element.dataset.longitude
    }
  }

  setDistanceText() {
    this.propertyTargets.forEach((propertyTarget) => {
      let distanceFrom = getDistance(
        this.getUserCoordinates(),
        { latitude: propertyTarget.dataset.latitude, longitude: propertyTarget.dataset.longitude }
      );

      propertyTarget.querySelector('[data-distance-away]').innerHTML = `${Math.round(convertDistance(distanceFrom, 'mi'))} miles away`;
    });
  }

}
