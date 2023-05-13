/// @desc Quick and dirty camera creation system

if !view_enabled
	{
		view_camera[0] = camera_create_view(0, 0, IG_RESX, IG_RESY, 0, -1, 0, 0, 0, 0)
		view_enabled = true
		view_visible[0] = true
		camera_apply(0)
	}