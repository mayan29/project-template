<template>
  <div class="home">
    <button @click="onImgClick">拍照/相册</button>
    <div v-if="src.length">
      <img alt="Vue logo" :src="src">
    </div>
  </div>
</template>

<script>
export default {
  name: 'Home',
  data() {
    return {
      src: ''
    }
  },
  created() {
    document.addEventListener("deviceready", this.onDeviceReady, false)
  },
  methods: {
    onDeviceReady (data) {
      console.log('设备已经准备好:', data)
    },
    onImgClick () {
      console.log('打印 navigator.camera:', navigator.camera)
      navigator.camera.getPicture(this.onSuccess, this.onFail, { 
        quality: 50, 
        destinationType: navigator.camera.DestinationType.FILE_URI 
      })
    },
    onSuccess (imageURI) {
      console.log('调用 camera 成功:', imageURI)
      this.src = imageURI
    },
    onFail (message) {
      console.log('调用 camera 失败:', message)
    }
  }
}
</script>

<style scoped>
.home {
  text-align: center;
}
.home button {
  margin-bottom: 50px;
}
</style>