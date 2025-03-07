QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},
	['police'] = {
		label = 'Law Enforcement',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
        bankAuth = true,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 500
            },
            ['1'] = {
                name = 'Trainee',
                payment = 600
            },
			['2'] = {
                name = 'Officer',
                payment = 700
            },
            ['3'] = {
                name = 'Officer II',
                payment = 800
            },
			['4'] = {
                name = 'Officer III',
                payment = 900
            },
			['5'] = {
                name = 'Detective',
                payment = 1000
            },
			['6'] = {
                name = 'Detective II',
                payment = 1100
            },
            ['7'] = {
                name = 'Corporal',
                isboss = false,
                payment = 1200
            },
            ['8'] = {
                name = 'Sergeant',
                isboss = false,
                payment = 1300
            },
            ['9'] = {
                name = 'Staff Sergeant',
				isboss = true,
                payment = 1400
            },
            ['10'] = {
                name = 'Lieutenant',
				isboss = true,
                payment = 1500
            },
            ['11'] = {
                name = 'Captain',
                isboss = true,
                payment = 1600
            },
            ['12'] = {
                name = 'Commander',
                isboss = true,
                payment = 1700
            },
            ['13'] = {
                name = 'Deputy Chief of Police',
                isboss = true,
                payment = 1800
            },
            ['14'] = {
                name = 'Assist. Chief of Police',
                isboss = true,
                bankAuth = true,
                payment = 1900
            },
            ['15'] = {
                name = 'Chief of Police',
				isboss = true,
                bankAuth = true,
                payment = 2000
            },
            ['16'] = {
                name = 'Trooper',
				isboss = true,
                bankAuth = true,
                payment = 600
            },            
            ['17'] = {
                name = 'Commissioner',
				isboss = true,
                bankAuth = true,
                payment = 2000
            },
        },
	},
    ["doj"] = {
        label = "DOJ",
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = "Secretary",
                payment = 300
            },
            ['1'] = {
                name = "Probationary Prosecutor",
                payment = 300
            },
            ['2'] = {
                name = "Prosecutor",
                payment = 300
            },
            ['3'] = {
                name = "Paralegal",
                payment = 400
            },
            ['4'] = {
                name = "Lawyer",
                payment = 500
            },
            ['5'] = {
                name = "Bounty Hunter",
                payment = 600
            },
            ['6'] = {
                name = "District Attorney",
                payment = 700
            },
            ['7'] = {
                name = "Secret Service Agent",
                isboss = false,
                payment = 800
            },
            ['8'] = {
                name = "Probationary Marshal",
                isboss = false,
                payment = 900
            },
            ['9'] = {
                name = "Marshal",
                isboss = false,
                payment = 1000
            },
            ['10'] = {
                name = "Secret Service SAC",
                isboss = true,
                payment = 1100
            },
            ['11'] = {
                name = "Solicitor",
                isboss = false,
                bankAuth = false,
                payment = 1200
            },
            ['12'] = {
                name = "Supervisor Marshal",
                isboss = false,
                bankAuth = false,
                payment = 1300
            },
            ['13'] = {
                name = "Solicitor General",
                isboss = false,
                bankAuth = false,
                payment = 1400
            },
            ['14'] = {
                name = "Judge",
                isboss = false,
                bankAuth = false,
                payment = 1500
            },
            ['15'] = {
                name = "Deputy Chief Marshal",
                isboss = false,
                bankAuth = false,
                payment = 1600
            },
            ['16'] = {
                name = "Chief Marshal",
                isboss = true,
                bankAuth = false,
                payment = 1700
            },
            ['17'] = {
                name = "Chief Judge",
                isboss = true,
                bankAuth = false,
                payment = 1800
            },
            ['18'] = {
                name = "Deputy Chief Justice",
                isboss = true,
                bankAuth = false,
                payment = 1900
            },
            ['19'] = {
                name = "Chief Justice",
                isboss = true,
                bankAuth = false,
                payment = 2000
            },
            ['21'] = {
                name = "Mayor",
                isboss = true,
                bankAuth = true,
                payment = 2000
            },
            ['22'] = {
                name = "Attorney General",
                isboss = true, 
                bankAuth = false,
                payment = 2000
            },    
        },
    },
	['ambulance'] = {
		label = 'SAFR',
		defaultDuty = true,
		offDutyPay = false,
        bankAuth = true,
		grades = {
            ['0'] = {
                name = 'Junior Paramedic',
                payment = 1300
            },
			['1'] = {
                name = 'EMR',
                payment = 1400
            },
			['2'] = {
                name = 'EMT',
                payment = 1500
            },
			['3'] = {
                name = 'AEMT',
                payment = 1600
            },
			['4'] = {
                name = 'ALSA',
				isboss = true,
                bankAuth = true,
                payment = 1700
            },
            ['5'] = {
                name = 'Lead Paramedic',
				isboss = true,
                bankAuth = true,
                payment = 1800
            },
            ['6'] = {
                name = 'Assist. Chief Medical Officer',
				isboss = true,
                bankAuth = true,
                payment = 1900
            },
            ['7'] = {
                name = 'Chief Medical Officer',
				isboss = true,
                bankAuth = true,
                payment = 2000
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
        bankAuth = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'House Sales',
                payment = 175
            },
			['2'] = {
                name = 'Business Sales',
                payment = 200
            },
			['3'] = {
                name = 'Broker',
                payment = 350
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                bankAuth = true,
                payment = 400
            },
            ['5'] = {
                name = 'Owner',
				isboss = true,
                bankAuth = true,
                payment = 500
            },
        },
	},

    ["styles"] = {
		label = "Styles Enterprise",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Associate",
                payment = 1500
            },
			['1'] = {
                name = "Employee",
                payment = 1600
            },
			['2'] = {
                name = "Veteran",
                payment = 1700
            },
			['3'] = {
                name = "Assistant Manager",
                payment = 1800
            },
			['4'] = {
                name = "Manager",
                payment = 1900
            },
            ['5'] = {
                name = "COO",
                payment = 2000
            },
            ['6'] = {
                name = "CFO",
                isboss = true,
                payment = 3000
            },
            ['7'] = {
                name = "CEO",
                isboss = true,
                payment = 4000
            },
        },
	},

    ["hayes"] = {
		label = "Hayes Auto",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 1000
            },
			['1'] = {
                name = "Salesmen",
                payment = 1200
            },
			['2'] = {
                name = "Mechanic",
                payment = 1300
            },
			['3'] = {
                name = "Head Salesmen",
                payment = 1400
            },
			['4'] = {
                name = "Head Mechanic",
                payment = 1500
            },
            ['5'] = {
                name = "Assistant Manager",
                payment = 1600
            },
            ['6'] = {
                name = "Manager",
                isboss = true,
                payment = 1700
            },
            ['7'] = {
                name = "Senior Manager",
                isboss = true,
                payment = 1800
            },
            ['8'] = {
                name = "General Manager",
                isboss = true,
                payment = 1900
            },
            ['9'] = {
                name = "Co Owner",
                isboss = true,
                payment = 2000
            },
            ['10'] = {
                name = "Owner",
                isboss = true,
                payment = 2000
            },
        },
	},
    ["tunershop"] = {
		label = "Tuner Shop",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 1000
            },
			['1'] = {
                name = "Salesmen",
                payment = 1200
            },
			['2'] = {
                name = "Mechanic",
                payment = 1300
            },
			['3'] = {
                name = "Head Salesmen",
                payment = 1400
            },
			['4'] = {
                name = "Head Mechanic",
                payment = 1500
            },
            ['5'] = {
                name = "Assistant Manager",
                payment = 1600
            },
            ['6'] = {
                name = "Manager",
                isboss = true,
                payment = 1700
            },
            ['7'] = {
                name = "Senior Manager",
                isboss = true,
                payment = 1800
            },
            ['8'] = {
                name = "General Manager",
                isboss = true,
                payment = 1900
            },
            ['9'] = {
                name = "Co Owner",
                isboss = true,
                payment = 2000
            },
            ['10'] = {
                name = "Owner",
                isboss = true,
                payment = 2000
            },
        },
	},
    ["bennys"] = {
		label = "Bennys",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 100
            },
			['1'] = {
                name = "Salesmen",
                payment = 150
            },
			['2'] = {
                name = "Mechanic",
                payment = 200
            },
			['3'] = {
                name = "Head Salesmen",
                payment = 250
            },
			['4'] = {
                name = "Head Mechanic",
                payment = 300
            },
            ['5'] = {
                name = "Assistant Manager",
                payment = 350
            },
            ['6'] = {
                name = "Manager",
                isboss = true,
                payment = 400
            },
            ['7'] = {
                name = "Senior Manager",
                isboss = true,
                payment = 450
            },
            ['8'] = {
                name = "General Manager",
                isboss = true,
                payment = 500
            },
            ['9'] = {
                name = "Co Owner",
                isboss = true,
                payment = 500
            },
            ['10'] = {
                name = "Owner",
                isboss = true,
                payment = 500
            },
        },
	},
    ["lscustoms"] = {
		label = "Los Santos Customs",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 100
            },
			['1'] = {
                name = "Salesmen",
                payment = 150
            },
			['2'] = {
                name = "Mechanic",
                payment = 200
            },
			['3'] = {
                name = "Head Salesmen",
                payment = 250
            },
			['4'] = {
                name = "Head Mechanic",
                payment = 300
            },
            ['5'] = {
                name = "Assistant Manager",
                payment = 350
            },
            ['6'] = {
                name = "Manager",
                isboss = true,
                payment = 400
            },
            ['7'] = {
                name = "Senior Manager",
                isboss = true,
                payment = 450
            },
            ['8'] = {
                name = "General Manager",
                isboss = true,
                payment = 500
            },
            ['9'] = {
                name = "Co Owner",
                isboss = true,
                payment = 500
            },
            ['10'] = {
                name = "Owner",
                isboss = true,
                payment = 500
            },
		},
	},
    ["bestbuds"] = {
		label = "Best Buds",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 1200
            },
			['1'] = {
                name = "Employee",
                payment = 1600
            },
			['2'] = {
                name = "Manager",
                isboss = true,
                payment = 1800
            },
			['3'] = {
                name = "Owner",
                isboss = true,
                payment = 2000
            },
        },
	},
    ["catcafe"] = {
        label = "UwU Cafe",
        defaultDuty = true,
        bankAuth = true,
        grades = {
            ['0'] = {
                name = "Cashier",
                payment = 100
            },
            ['1'] = {
                name = "Cook",
                payment = 150
            },
            ['2'] = {
                name = "Bouncer",
                payment = 200
            },
            ['3'] = {
                name = "Cat Caretaker",
                payment = 250
            },
            ['4'] = {
                name = "Head Supervisor",
                payment = 300
            },
            ['5'] = {
                name = "Manager",
                isboss = true,
                payment = 350
            },
            ['6'] = {
                name = "Store Owner",
                isboss = true,
                bankAuth = true,
                payment = 400
            },
        },
    },
    ['vanillaunicorn'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = true,
        bankAuth = true,
		grades = {
            ['0'] = { name = 'Trainee', payment = 150 },
			['1'] = { name = 'Bartender', payment = 200 },
			['2'] = { name = 'Experienced', payment = 300 },
			['3'] = { name = 'Manager', payment = 400 },
			['4'] = { name = 'Owner', isboss = true, bankAuth = true, payment = 500 },
        },
	},

    ['tequilala'] = {
		label = 'Tequi-la-la',
		defaultDuty = true,
        bankAuth = true,
		grades = {
            ['0'] = { name = 'Trainee', payment = 1200 },
			['1'] = { name = 'Bartender', payment = 1400 },
			['2'] = { name = 'Security', payment = 1500 },
			['3'] = { name = 'Manager', payment = 1600 },
			['4'] = { name = 'Owner', isboss = true, bankAuth = true, payment = 2000 },
        },
	},
    ['pizzathis'] = {
		label = 'Pizza This',
		defaultDuty = true,
        bankAuth = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Trainee', payment = 150 },
			['1'] = { name = 'Employee', payment = 200 },
			['2'] = { name = 'Delivery', payment = 250 },
			['3'] = { name = 'Supervisor', payment = 300 },
            ['4'] = { name = 'Sales Rep', payment = 350 },
            ['5'] = { name = 'Head of Sales', payment = 400 },
            ['6'] = { name = 'General manager', payment = 450 },
			['7'] = { name = 'Owner', isboss = true, bankAuth = true, payment = 500 },
        },
	},
    ['burgershot'] = {
		label = 'Burger Shot',
		defaultDuty = true,
        bankAuth = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 1200 },
			['1'] = { name = 'Novice', payment = 1400 },
			['2'] = { name = 'Experienced', payment = 1600 },
			['3'] = { name = 'Manager', payment = 1800 },
			['4'] = { name = 'Owner', isboss = true, bankAuth = true, payment = 2000 },
        },
	},
    ['bahamamamas'] = {
		label = 'Bahama Mamas',
		defaultDuty = false,
        bankAuth = true,
		grades = {
            ['0'] = { name = 'Bartender', payment = 150 },
			['1'] = { name = 'Dancer', payment = 200 },
			['2'] = { name = 'DJ', payment = 300 },
			['3'] = { name = 'Manager', payment = 400 },
			['4'] = { name = 'Owner', isboss = true, bankAuth = true, payment = 500 },
        }
    },
    ['beanmachine'] = {
		label = 'Bean Machine',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Trainee', payment = 150 },
			['1'] = { name = 'Barista', payment = 200 },
			['2'] = { name = 'Shift Supervisor', payment = 300 },
			['3'] = { name = 'Manager', payment = 400 },
			['4'] = { name = 'Owner', isboss = true, payment = 500 },
        }
	},
    ['popsdiner'] = {
		label = "Pop's Diner",
		defaultDuty = false,
        bankAuth = true,
		grades = {
            ['0'] = { name = 'Trainee', payment = 100 },
			['1'] = { name = 'Dishwasher', payment = 150 },
			['2'] = { name = 'Line Cook', payment = 200 },
			['3'] = { name = 'Waiter/Waitress', payment = 250 },
            ['4'] = { name = 'Kitchen Manager', payment = 300 },
            ['5'] = { name = 'Shift Lead', payment = 350 },
            ['6'] = { name = 'Manager', payment = 400 },
			['7'] = { name = 'Owner', isboss = true, bankAuth = true, payment = 500 },
        },
	},
    -- DON'T TOUCH THIS | DO NOT GIVE YOURSELF THIS JOB
    ['administration'] = {
        label = "Government",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = { name = 'Government', isboss = true, payment = 0 },

        },
    },
    
    ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
      --  bankAuth = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 400
            },
		},
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
       -- bankAuth = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 400
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
       -- bankAuth = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 400
            },
        },
	},
    ['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
       -- bankAuth = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 400
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
       -- bankAuth = true,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 400
            },
        },
	},
}

