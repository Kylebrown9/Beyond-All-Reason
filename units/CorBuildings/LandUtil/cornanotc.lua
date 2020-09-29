return {
	cornanotc = {
		acceleration = 0,
		brakerate = 4.5,
		buildcostenergy = 3200,
		buildcostmetal = 210,
		builddistance = 400,
		builder = true,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 5,
		buildinggrounddecalsizey = 5,
		buildinggrounddecaltype = "decals/cornanotc_aoplane.dds",
		buildpic = "CORNANOTC.PNG",
		buildtime = 5312,
		canassist = true,
		canfight = true,
		canguard = true,
		canpatrol = true,
		canreclaim = true,
		canrepeat = false,
		canstop = true,
		cantbetransported = false,
		category = "ALL NOTSUB NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "31 32 31",
		collisionvolumetype = "CylY",
		description = "Assist & Repair in large radius. Transportable",
		energyuse = 30,
		explodeas = "nanoboom",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		mass = 700,
		maxdamage = 500,
		maxslope = 10,
		maxwaterdepth = 0,
		movementclass = "NANO",
		name = "Nano Turret",
		objectname = "Units/CORNANOTC.s3o",
		script = "Units/CORNANOTC.cob",
		seismicsignature = 0,
		selfdestructas = "nanoselfd",
		sightdistance = 380,
		terraformspeed = 1000,
		turnrate = 1,
		upright = true,
		usebuildinggrounddecal = true,
		workertime = 200,
		customparams = {
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbuildings/landutil",
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2-builder",
				[2] = "deathceg3-builder",
				[3] = "deathceg4-builder",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture1",
			repair = "repair2",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vcormove",
			},
			select = {
				[1] = "vcorsel",
			},
		},
	},
}
