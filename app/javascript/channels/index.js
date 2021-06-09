// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.
//import { initSelect2 } from './plugins/init_select2';

// [...]
//initSelect2();

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
