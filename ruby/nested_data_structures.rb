school = {
	school_name: 'Grant Elementary',
	first_grade: {
		teacher_name: 'Mrs. Casson',
		grade: 'first',
		student_count: {
			boys: 13,
			girls: 12,
			total: 25
		},
		class_furnishing: [
			'student desks',
			'student chairs',
			'teacher desk',
			'teacher chair',
			'book cases'
		],
		lunch_plan: {
			monday: 'chicken sandwich',
			tuesday: 'mac and cheese',
			wednesday: 'spaghetti',
			thursday: 'chicken nuggets',
			friday: 'pizza'
		}
	},
	second_grade: {
		teacher_name: 'Mrs. Metz',
		grade: 'second',
		student_count:{
			boys: 12,
			girls: 15,
			total: 27
		},
		class_furnishing: [
		'student desks',
		'student chairs',
		'teacher desk',
		'teacher chair',
		'computers'
		],
		lunch_plan: {
			monday: 'sloppy joe',
			tuesday: 'spaghetti',
			wednesday: 'pizza',
			thursday: 'salad',
			friday: 'hamburger'
		}
	},
	third_grade: {
		teacher_name: 'Mrs. Reissner',
		grade: 'third',
		student_count:{
			boys: 13,
			girls: 11,
			total: 24
		},
		class_furnishing: [
		'student desks',
		'student chairs',
		'teacher desk',
		'teacher chair',
		'laptops'
		],
		lunch_plan: {
			monday: 'chicken nuggets',
			tuesday: 'pizza',
			wednesday: 'salad',
			thursday: 'spaghetti',
			friday: 'grilled cheese'
		}
	}
}

school[:second_grade][:grade]
school[:third_grade][:lunch_plan][:wednesday]
school[:second_grade][:class_furnishing][4]
school[:first_grade][:student_count][:girls]
school[:second_grade][:teacher_name].upcase
school[:third_grade][:lunch_plan][:friday] = 'vegetables'
school[:first_grade][:class_furnishing] << 'projector'

p school