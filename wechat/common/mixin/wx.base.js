import $Time from '@/utils/time.js'

export default {
	filters: {
		formatTime(value) {
			return $Time.gettime(value)
		}
	},
}