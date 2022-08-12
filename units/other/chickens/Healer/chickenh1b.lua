return {
	chickenh1b = {
		acceleration = 0.115,
		activatewhenbuilt = true,
		autoheal = 24,
		bmcode = 1,
		brakerate = 0.23,
		buildcostenergy = 600,
		buildcostmetal = 40,
		builddistance = 180,
		builder = 1,
		buildpic = "chickens/chickenh1b.DDS",
		buildtime = 1125,
		canassist = 0,
		canbuild = 1,
		canguard = 1,
		canmove = 1,
		canpatrol = 1,
		canrepair = 1,
		canstop = 1,
		capturable = false,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CHICKEN EMPABLE",
		collide = 0,
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "10 14 22",
		collisionvolumetype = "box",
		defaultmissiontype = "Standby",
		energymake = 15,
		explodeas = "WEAVER_DEATH",
		floater = false,
		footprintx = 1,
		footprintz = 1,
		hidedamage = 1,
		kamikaze = true,
		kamikazedistance = 60,
		leavetracks = true,
		maneuverleashlength = 640,
		mass = 60,
		maxdamage = 330,
		maxslope = 18,
		maxvelocity = 2.15,
		maxwaterdepth = 0,
		metalstorage = 1000,
		mobilestandorders = 1,
		movementclass = "CHICKSMALLHOVER",
		noautofire = 0,
		objectname = "Chickens/chicken_droneb.s3o",
		reclaimspeed = 400,
		script = "Chickens/chickenh1b.cob",
		seismicsignature = 1,
		selfdestructas = "WEAVER_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 350,
		smoothanim = true,
		standingmoveorder = 1,
		stealth = 1,
		steeringmode = "2",
		tedclass = "BOT",
		trackoffset = 1,
		trackstrength = 3,
		trackstretch = 1,
		tracktype = "ChickenTrack",
		trackwidth = 10,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 1840,
		unitname = "chickenh1b",
		upright = false,
		waterline = 13,
		workertime = 150,
		customparams = {
			subfolder = "other/chickens",
			model_author = "KDR_11k, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_s_normals.png",
			--treeshader = "no",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
			},
			pieceexplosiongenerators = {
				[1] = "blood_spray",
				[2] = "blood_spray",
				[3] = "blood_spray",
			},
		},
	},
}
