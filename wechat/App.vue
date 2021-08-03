<script>
	export default {
		onLaunch: function() {
			// 加载icon图标库
			const domModule = weex.requireModule('dom')
			domModule.addRule('fontFace', {
				'fontFamily': "iconfont",
				'src': "url('http://at.alicdn.com/t/font_2703357_3irgdijcmvx.ttf')"
			});
		},
		onShow: function() {
			console.log('App Show')
		},
		onHide: function() {
			console.log('App Hide')
		}
	}
</script>

<style>
	/*每个页面公共css */
	@import "./common/free.css";
	@import "./common/common.css";
	/* #ifndef APP-NVUE */
	@import "./common/iconfont.css";
	/* #endif */
</style>
