function geoFindMe() {

  const status = document.querySelector('#status');
  const mapLink = document.querySelector('#map-link');

  // mapLink.href = '';
  mapLink.textContent = '';

  function success(position) {
    const latitude  = position.coords.latitude;
    const longitude = position.coords.longitude;

     status.textContent = '';
     const reverse = `https://api.mapbox.com/geocoding/v5/mapbox.places/${latitude},${longitude}.json?access_token=pk.eyJ1IjoiZ2dsZW5uODgiLCJhIjoiY2tuaGM5MDBzMHpqejJubndudTZ0Z2JtdCJ9.-qhIHeDpFXTkRntOn204uA`;


     // mapLink.href = `https://www.openstreetmap.org/#map=18/${latitude}/${longitude}`;
   // mapLink.textContent = `Latitude: ${latitude} °, Longitude: ${longitude} °`;
      mapLink.textContent = `https://api.mapbox.com/geocoding/v5/mapbox.places/${latitude},${longitude}.json?access_token=pk.eyJ1IjoiZ2dsZW5uODgiLCJhIjoiY2tuaGM5MDBzMHpqejJubndudTZ0Z2JtdCJ9.-qhIHeDpFXTkRntOn204uA`;
  }

  function error() {
    status.textContent = 'Unable to retrieve your location';
  }

  if(!navigator.geolocation) {
    status.textContent = 'Geolocation is not supported by your browser';
  } else {
     status.textContent = 'Locating…';
    navigator.geolocation.getCurrentPosition(success, error);
  }

}

// document.querySelector('#find-me').addEventListener('click', geoFindMe);

export { geoFindMe }