<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png" @click="onImgClick">
  </div>
</template>

<script>
export default {
  name: 'Home',
  methods: {
    onImgClick () {
      document.addEventListener("deviceready", onDeviceReady, false)
      function onDeviceReady() {
          console.log(navigator.camera)
      }
    }
  }
}
</script>
