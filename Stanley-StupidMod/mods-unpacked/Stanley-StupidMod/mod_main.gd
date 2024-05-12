extends Node

const MOD_DIR = "Stanley-StupidMod/"
const TESTMOD_LOG = "stanley_mod"

var dir = ""

func _init():
	ModLoaderUtils.log_info("Init", TESTMOD_LOG)
	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	
func _ready():
	var ContentLoader = get_node("/root/ModLoader/Darkly77-ContentLoader/ContentLoader")
	
	ContentLoader.load_data(dir + "content_data/content.tres", TESTMOD_LOG)

	ModLoaderUtils.log_info("Ready", TESTMOD_LOG)
	
