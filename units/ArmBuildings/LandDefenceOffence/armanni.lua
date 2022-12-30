return {
	armanni = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 4096,
		buildcostenergy = 74000,
		buildcostmetal = 3500,
		buildpic = "ARMANNI.DDS",
		buildtime = 52071,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 10 0",
		collisionvolumescales = "54 81 54",
		collisionvolumetype = "BoxY",
		corpse = "DEAD",
		damagemodifier = 0.25,
		energystorage = 1000,
		explodeas = "hugeBuildingexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 72,
		maxdamage = 5500,
		maxslope = 10,
		maxwaterdepth = 0,
		nochasecategory = "MOBILE",
		objectname = "Units/ARMANNI.s3o",
		onoffable = true,
		radardistance = 1500,
		radaremitheight = 72,
		script = "Units/ARMANNI.cob",
		seismicsignature = 0,
		selfdestructas = "hugeBuildingExplosionGenericSelfd",
		sightdistance = 780,
		yardmap = "oooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armanni_aoplane.dds",
			buildinggrounddecalsizey = 6,
			buildinggrounddecalsizex = 6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'weapon',
			model_author = "Cremuss",
			normaltex = "unittextures/Arm_normal.dds",
			removewait = true,
			subfolder = "armbuildings/landdefenceoffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 1.06567382829e-05 -0.0",
				collisionvolumescales = "62.5 81.7362213135 62.5",
				collisionvolumetype = "Box",
				damage = 1800,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 1940,
				object = "Units/armanni_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 900,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 776,
				object = "Units/arm3X3B.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:tachyonshot",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "anni",
			},
			select = {
				[1] = "anni",
			},
		},
		weapondefs = {
			ata = {
				areaofeffect = 16,
				avoidfeature = false,
				beamtime = 1.5,
				collidefriendly = false,
				corethickness = 0.3,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 1500,
				explosiongenerator = "custom:laserhit-large-blue",
				firestarter = 90,
				impulseboost = 0,
				impulsefactor = 0,
				largebeamlaser = true,
				laserflaresize = 6.5,
				name = "Heavy long-range g2g tachyon accelerator beam",
				noselfdamage = true,
				range = 1400,
				reloadtime = 9.9,
				rgbcolor = "0 0 1",
				scrollspeed = 5,
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "annigun1",
				soundtrigger = 1,
				targetmoveerror = 0.3,
				texture3 = "largebeam",
				thickness = 4.5,
				tilelength = 150,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1400,
				damage = {
					commanders = 2400,
					default = 10800,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL GROUNDSCOUT",
				def = "ATA",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
