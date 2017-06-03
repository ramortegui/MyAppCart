import Vue from 'vue';
document.addEventListener('DOMContentLoaded', () => {
  // do your setup here
  console.log('Initialized app');
  var app = new Vue({
    el: '#app',
    data: {
      message: 'Hello Vue!'
    }
  })
});
