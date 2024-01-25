// Set x and y values for zoom
// Making a map and tiles
// Setting a higher initial zoom to make effect more obvious
const mymap = L.map('ISS').setView([0, 0], 6);
const attribution =
    '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors';

const tileUrl = 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';
const tiles = L.tileLayer(tileUrl, { attribution });
tiles.addTo(mymap);

// Making a marker with a custom icon
const issIcon = L.icon({
    iconUrl: 'iss200.png',
    iconSize: [50, 32],
    iconAnchor: [25, 16]
});
let marker = L.marker([0, 0], { icon: issIcon }).addTo(mymap);

//The data comes from fetch like stram and I can organize them in any file I want (csv->text, blob ->images)
const api_url = 'https://api.wheretheiss.at/v1/satellites/25544';

let firstTime = true;

async function getISS() {
    const response = await fetch(api_url);
    // Μετατρέπω το response σε json
    const data = await response.json();
    const { latitude, longitude } = data;

    // Always set the view to current lat lon and zoom!
    mymap.setView([latitude, longitude], mymap.getZoom());
    marker.setLatLng([latitude, longitude]);

    // Με το toFixed κρατάω μόνο δύο δεκαδικά σε έναν αριθμό
    document.getElementById('lat').textContent = latitude.toFixed(2);
    document.getElementById('lon').textContent = longitude.toFixed(2);
}

getISS();
setInterval(getISS, 1000);