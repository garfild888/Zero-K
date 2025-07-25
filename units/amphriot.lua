return { amphriot = {
  name                   = [[Scallop]],
  description            = [[Amphibious Riot Bot (Undersea Fire)]],
  acceleration           = 0.54,
  activateWhenBuilt      = true,
  brakeRate              = 2.25,
  buildPic               = [[amphriot.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND SINK]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[45 45 45]],
  selectionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    amph_regen = 10,
    amph_submerged_at = 40,
    sink_on_emp    = 1,
    floattoggle    = [[1]],
    set_target_range_buffer = 35,
    selection_scale = 1.17,
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  health                 = 1200,
  iconType               = [[amphtorpriot]],
  leaveTracks            = true,
  maxSlope               = 36,
  metalCost              = 260,
  movementClass          = [[AKBOT2]],
  noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP HOVER]],
  objectName             = [[amphriot.s3o]],
  script                 = [[amphriot.lua]],
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {
    explosiongenerators = {
      [[custom:HEAVY_CANNON_MUZZLE]],
      [[custom:RIOT_SHELL_L]],
      [[custom:bubbles_small]],
    },
  },

  sightDistance          = 430,
  sonarDistance          = 430,
  speed                  = 51,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ChickenTrackPointy]],
  trackWidth             = 28,
  turnRate               = 1200,
  upright                = false,

  weapons                = {

    {
      def                = [[FLECHETTE]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

    {
      def                = [[TORPEDO]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },

  },

  weaponDefs             = {

    TORPEDO = {
      name                    = [[Undersea Charge Launcher]],
      areaOfEffect            = 32,
      burst                   = 2,
      burstRate               = 0.3,
      avoidFriendly           = false,
      bouncerebound           = 0.7,
      bounceslip              = 1,
      burnblow                = true,
      canAttackGround         = false, -- also workaround for range hax
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
      cegTag                  = [[torpedo_trail]],

      customparams = {
        stays_underwater = 1,
      },

      damage                  = {
        default = 48.01,
      },

      edgeEffectiveness       = 0.6,
      explosionGenerator      = [[custom:TORPEDO_HIT_SMALL_WEAK]],
      flightTime              = 1.5,
      groundbounce            = 1,
      impactOnly              = false,
      impulseBoost            = 0,
      impulseFactor           = 0.6,
      interceptedByShieldType = 1,
      leadlimit               = 1,
      myGravity               = 2,
      model                   = [[diskball.s3o]],
      numBounce               = 4,
      range                   = 270,
      reloadtime              = 2.6,
      soundHit                = [[TorpedoHitVariable]],
      soundHitVolume          = 2.6,
      --soundStart            = [[weapon/torpedo]],
      startVelocity           = 90,
      tracks                  = true,
      turnRate                = 70000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 700,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 300,
    },

    FLECHETTE = {
      name                    = [[Heavy Shotgun]],
      alphaDecay              = 0.3,
      areaOfEffect            = 64,
      burnBlow                = true,
      burst                   = 3,
      burstRate               = 0.033,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        light_camera_height = 2000,
        light_color = [[0.3 0.3 0.05]],
        light_radius = 50,
      },

      damage                  = {
        default = 28,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:archplosion_aoe]],
      fireStarter             = 50,
      heightMod               = 1,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      projectiles             = 3,
      range                   = 285,
      reloadtime              = 0.966,
      separation              = 1.2,
      size                    = 2,
      sizeDecay               = 0,
      rgbColor                = [[1 1 0]],
      soundHit                = [[impacts/shotgun_impactv5]],
      soundStart              = [[weapon/shotgun_firev4]],
      soundStartVolume        = 0.5,
      soundTrigger            = true,
      sprayangle              = 1800,
      stages                  = 20,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 880,
    }
  },

  featureDefs            = {

    DEAD      = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[amphriot_wreck.s3o]],
    },

    HEAP      = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
