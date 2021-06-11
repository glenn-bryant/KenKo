import mapboxgl from '!mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const buildMap = (mapElement) => {
  mapboxgl.accessToken = 'pk.eyJ1IjoiZ2dsZW5uODgiLCJhIjoiY2tuaGM5MDBzMHpqejJubndudTZ0Z2JtdCJ9.-qhIHeDpFXTkRntOn204uA';
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };

export { buildMap };