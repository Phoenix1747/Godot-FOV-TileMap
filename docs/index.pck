GDPC                                                                               @   res://.import/tiles.png-20e12ed313f9b52ca4483ea23302e684.stex   �      �      ��E�Ķg�b��S&   res://fov_tilemap.gd.remap  �3      &       ��=� ��{�>���F   res://fov_tilemap.gdc          M      �?������Db_v�   res://main.tscn p      -      ����+��D��
\��(   res://project.binary�3      �      ���~r����tG   res://tiles.png.import  �"      �      4���O����!#��   res://tileset.tres  0%      k      �o�����	�@��[        GDSC   3      �   �     ������ƶ   ���������ƶ�   ���������Ӷ�   �������Ӷ���   ����������ض   ������Ҷ   �������������Ӷ�   �����������Ҷ���   ��ƶ   ����������Ӷ   �����������¶���   ���������¶�   ������������������������ض��   ��������������������۶��   �����϶�   �������ƶ���   �������Ŷ���   �����׶�   ��������ƶ��   �������Ҷ���   ����������ƶ   ������ƶ   ����������Ŷ   ���������Ŷ�   �������������Ŷ�   ���ڶ���   ζ��   ϶��   ������������   ���¶���   ������������¶��   �������ض���   ��Ҷ   ���������Ŷ�   ������������������ض   ���۶���   ����������Ŷ   �����������¶���   ���Ӷ���   �������¶���   �����������ƶ���   �����������¶���   �������¶���   ���ƶ���   ��������¶��   ������������   ��Ŷ   �������ڶ���   �������ڶ���   ���Ŷ���   ����Ķ��                                                              
         	      
                                 '      (      4      5      ?      @      A      J      K      S      [      c      k      l      m      n      t       x   !   y   "   z   #   {   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A   �   B   �   C   �   D   �   E     F     G     H     I     J     K     L     M   $  N   -  O   .  P   :  Q   <  R   =  S   L  T   M  U   N  V   a  W   t  X   u  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l      m     n     o     p   #  q   $  r   *  s   0  t   1  u   2  v   3  w   4  x   5  y   6  z   7  {   8  |   9  }   ?  ~   I     R  �   a  �   b  �   c  �   d  �   j  �   p  �   v  �   |  �   }  �   �  �   �  �   YYYY3YY2�  YYYY8P�  Q5;�  �  P�  QYYYY8P�  Q;�  VYY8P�  Q;�  V�  9�  YY8P�  Q;�  V�  YYY;�  VNO9�	  YY;�
  V�  PQY;�  V�  PQY;�  V�  PQY;�  V�  PQYYYY0�  PQV�  �  PQYYYY0�  P�  QV�  &�  V�  �  PQYYYY0�  P�  V�  QV�  &�  �  V�  &�  V�  �  PQ�  '�  V�  �  PQ�  �  �  �  YYYY0�	  P�  V�  QV�  �  �  �  �  PQ�  �  PQYYYY0�  PQV�  �  PQ�  �  ;�  �  PQ�  �  )�  �  V�  �  L�  T�  MNO�  �  )�  �  V�  �  L�  T�  ML�  T�  M�  P�  Q�  �  ;�  �  PQ�  �
  �  T�  �  �  �  T�   YYYY0�  PQV�  ;�!  �  T�"  PQ�  �  &�  �!  �  �  T�#  V�  .�  �  ;�$  �  T�%  PQT�&  �  T�#  �  �  �  ;�'  �(  P�!  �$  �  Q�  P�  R�  Q�  ;�)  �(  P�!  �$  �  Q�  P�  R�  Q�  �  ;�  �  P�'  R�)  �'  Q�  ;�*  �  PQT�+  P�  Q�  �  �  �  �  )�  �  PQV�  &P�*  T�,  P�  Q�  P�  Q�  QV�  �-  P�  R�  Q�  �  ;�  �'  T�  �  �*  �  PQY�  �  *�  
�)  T�  V�  &�  T�.  P�  QV�  ;�  �'  T�  �  *�  
�)  T�  V�  &�*  T�,  P�  P�  R�  QQV�  &�  L�  MT�.  P�  QV�  &�/  P�  R�  Q�  V�  �0  P�  R�  R�  L�  ML�  MQ�  �  �  �  �  �  �  �  �  �  T�  �  �  �  T�#  YYYYYYYYYY0�  PQV�  )�  �  T�1  PQV�  )�  �  L�  MV�  �0  P�  R�  R�  L�  ML�  MQYYYY0�  PQV�  �  T�2  PQ�  �
  �  PQ�  �  �  PQY�  �  �  PQ�  �  �  PQY`   [gd_scene load_steps=5 format=2]

[ext_resource path="res://tileset.tres" type="TileSet" id=1]

[sub_resource type="GDScript" id=1]
script/source = "extends Node2D

var FPS := [] # Array for FPS measurements

onready var Map := $TileMap # Grab the map node once
onready var Camera := $Camera # Get camera node once

func _ready():
	# Spawn random tiles for 100x100 cells.
	var x = 0
	var y = 0
	while x < 100:
		while y < 100:
			Map.set_cell(x,y,randi()%13)
			y += 1
		y = 0
		x += 1
	
	Map.set_cell(2,3,-1)
	Map.load_map() # Load map manually again, because we just generated it. 


func _process(delta):
	if Input.is_key_pressed(KEY_ESCAPE):
		var avg = 0
		for fps in FPS:
			avg += fps
		avg = avg / FPS.size()
		print(\"Average FPS: \",avg)
		get_tree().quit()
	
	FPS.append(Performance.get_monitor(Performance.TIME_FPS)) # Log FPS each frame
"

[sub_resource type="GDScript" id=2]
script/source = "extends Camera2D

var addsub = Vector2(0.05,0.05) #Interval for zooming

func _unhandled_input(event): #Take care of camera zooming
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == BUTTON_WHEEL_DOWN:
			if zoom < Vector2(1.45,1.45): #Max zoom: 1.5
				zoom += addsub
				position = get_camera_screen_center()
		
		elif event.button_index == BUTTON_WHEEL_UP:
			if zoom > Vector2(0.5,0.5): #Max zoom: 0.5
				zoom -= addsub
				position = get_camera_screen_center()
			
		get_tree().set_input_as_handled()

func _process(delta): #Take care of camera movement
	var pixelspeed = 200 #Speed of the camera in pixel/frame

	if Input.is_key_pressed(KEY_W) or Input.is_key_pressed(KEY_UP):
		if get_position().y >= get_camera_position().y:
			position.y -= pixelspeed * delta
			get_tree().set_input_as_handled()
			
	if Input.is_key_pressed(KEY_S) or Input.is_key_pressed(KEY_DOWN):
		if get_position().y <= get_camera_position().y:
			position.y += pixelspeed * delta
			get_tree().set_input_as_handled()
			
	if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
		if get_position().x <= get_camera_position().x:
			position.x += pixelspeed * delta
			get_tree().set_input_as_handled()
			
	if Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
		if get_position().x >= get_camera_position().x:
			position.x -= pixelspeed * delta
			get_tree().set_input_as_handled()
"

[sub_resource type="GDScript" id=3]
script/source = "## Important:
## You need to extend from FovTileMap:
extends FovTileMap


# Declare member variables here. Examples:
# var a = 2
# var b = \"text\"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
"

[node name="Main" type="Node2D"]
script = SubResource( 1 )

[node name="Camera" type="Camera2D" parent="."]
current = true
limit_smoothed = true
script = SubResource( 2 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
cell_size = Vector2( 20, 20 )
format = 1
tile_data = PoolIntArray( 327686, 11, 0, 327687, 11, 0, 327688, 11, 0, 327689, 11, 0, 327690, 11, 0, 327691, 11, 0, 327692, 11, 0, 327694, 11, 0, 327695, 11, 0, 327696, 11, 0, 327697, 11, 0, 327698, 11, 0, 327700, 11, 0, 327701, 11, 0, 327702, 11, 0, 327703, 11, 0, 327704, 11, 0, 327706, 11, 0, 327707, 11, 0, 327708, 11, 0, 327709, 11, 0, 327710, 11, 0, 327711, 11, 0, 327712, 11, 0, 393225, 11, 0, 393230, 11, 0, 393236, 11, 0, 393245, 11, 0, 458761, 11, 0, 458766, 11, 0, 458772, 11, 0, 458781, 11, 0, 524297, 11, 0, 524302, 11, 0, 524303, 11, 0, 524304, 11, 0, 524305, 11, 0, 524308, 11, 0, 524309, 11, 0, 524310, 11, 0, 524311, 11, 0, 524312, 11, 0, 524317, 11, 0, 589833, 11, 0, 589838, 11, 0, 589848, 11, 0, 589853, 11, 0, 655369, 11, 0, 655374, 11, 0, 655384, 11, 0, 655389, 11, 0, 720905, 11, 0, 720910, 11, 0, 720920, 11, 0, 720925, 11, 0, 786441, 11, 0, 786446, 11, 0, 786447, 11, 0, 786448, 11, 0, 786449, 11, 0, 786450, 11, 0, 786452, 11, 0, 786453, 11, 0, 786454, 11, 0, 786455, 11, 0, 786456, 11, 0, 786461, 11, 0 )
script = SubResource( 3 )
CameraNode = NodePath("../Camera")
   GDSTx   <            �  WEBPRIFF�  WEBPVP8L�  /w���(��h\��+ �7w���$I������B~E�$5�<�M"N�P� !V	��- =��h�Q�u@������e�3� ˶պMB�j��pm�\	��F�ߡ$IU3��,y|ĈeGW���.��Q��봤�,>�S��bH��gʱ�R��&F�D��Nln�����Z�XH�?ErA�؊.
��$C��w����]��w� �τ�^�}E_`�93���ZSѤc�1�Q���8[��ގ�lGR���	����u���Q�a#����*�ۀ��Bck1=-�8���v�Ə�ˑK/�O^���<���o��v��ōe1�?`��U���]|���p�i��i�q�1�K+����A���/��5��|�Zɝǹ���@�G5D�.��<*�\�x�r���\��ǉ�v�t�(�ş��}o[!�0����)���Eq.)�O6�5�K7�����䞇c]\��4ؿ��j��	b?)�x��^~��ɹ�^��$:��YB�!�ᗊ�\N�0����9���K�k���Mn�۹��
����t�E����e�B%]�~mh�K�[c�)�5o�|V�,�����+q��;�(�����_�� ^���?3���7�!��vE5�^��]:�3\K��.P�.}�ʻ �5o�_�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tiles.png-20e12ed313f9b52ca4483ea23302e684.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://tiles.png"
dest_files=[ "res://.import/tiles.png-20e12ed313f9b52ca4483ea23302e684.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           [gd_resource type="TileSet" load_steps=2 format=2]

[ext_resource path="res://tiles.png" type="Texture" id=1]

[resource]

0/name = "ground"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 20, 20 )
0/is_autotile = false
0/occluder_offset = Vector2( 10, 10 )
0/navigation_offset = Vector2( 10, 10 )
0/shapes = [  ]
1/name = "ground2"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 20, 0, 20, 20 )
1/is_autotile = false
1/occluder_offset = Vector2( 10, 10 )
1/navigation_offset = Vector2( 10, 10 )
1/shapes = [  ]
2/name = "ground3"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 40, 0, 20, 20 )
2/is_autotile = false
2/occluder_offset = Vector2( 10, 10 )
2/navigation_offset = Vector2( 10, 10 )
2/shapes = [  ]
3/name = "ground4"
3/texture = ExtResource( 1 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 60, 0, 20, 20 )
3/is_autotile = false
3/occluder_offset = Vector2( 10, 10 )
3/navigation_offset = Vector2( 10, 10 )
3/shapes = [  ]
4/name = "ground5"
4/texture = ExtResource( 1 )
4/tex_offset = Vector2( 0, 0 )
4/modulate = Color( 1, 1, 1, 1 )
4/region = Rect2( 0, 20, 20, 20 )
4/is_autotile = false
4/occluder_offset = Vector2( 10, 10 )
4/navigation_offset = Vector2( 10, 10 )
4/shapes = [  ]
5/name = "ground6"
5/texture = ExtResource( 1 )
5/tex_offset = Vector2( 0, 0 )
5/modulate = Color( 1, 1, 1, 1 )
5/region = Rect2( 20, 20, 20, 20 )
5/is_autotile = false
5/occluder_offset = Vector2( 10, 10 )
5/navigation_offset = Vector2( 10, 10 )
5/shapes = [  ]
6/name = "ground7"
6/texture = ExtResource( 1 )
6/tex_offset = Vector2( 0, 0 )
6/modulate = Color( 1, 1, 1, 1 )
6/region = Rect2( 40, 20, 20, 20 )
6/is_autotile = false
6/occluder_offset = Vector2( 10, 10 )
6/navigation_offset = Vector2( 10, 10 )
6/shapes = [  ]
7/name = "ground8"
7/texture = ExtResource( 1 )
7/tex_offset = Vector2( 0, 0 )
7/modulate = Color( 1, 1, 1, 1 )
7/region = Rect2( 0, 40, 20, 20 )
7/is_autotile = false
7/occluder_offset = Vector2( 10, 10 )
7/navigation_offset = Vector2( 10, 10 )
7/shapes = [  ]
8/name = "ground9"
8/texture = ExtResource( 1 )
8/tex_offset = Vector2( 0, 0 )
8/modulate = Color( 1, 1, 1, 1 )
8/region = Rect2( 20, 40, 20, 20 )
8/is_autotile = false
8/occluder_offset = Vector2( 10, 10 )
8/navigation_offset = Vector2( 10, 10 )
8/shapes = [  ]
9/name = "ground10"
9/texture = ExtResource( 1 )
9/tex_offset = Vector2( 0, 0 )
9/modulate = Color( 1, 1, 1, 1 )
9/region = Rect2( 40, 40, 20, 20 )
9/is_autotile = false
9/occluder_offset = Vector2( 10, 10 )
9/navigation_offset = Vector2( 10, 10 )
9/shapes = [  ]
10/name = "ground11"
10/texture = ExtResource( 1 )
10/tex_offset = Vector2( 0, 0 )
10/modulate = Color( 1, 1, 1, 1 )
10/region = Rect2( 60, 40, 20, 20 )
10/is_autotile = false
10/occluder_offset = Vector2( 10, 10 )
10/navigation_offset = Vector2( 10, 10 )
10/shapes = [  ]
11/name = "ground12"
11/texture = ExtResource( 1 )
11/tex_offset = Vector2( 0, 0 )
11/modulate = Color( 1, 1, 1, 1 )
11/region = Rect2( 80, 40, 20, 20 )
11/is_autotile = false
11/occluder_offset = Vector2( 10, 10 )
11/navigation_offset = Vector2( 10, 10 )
11/shapes = [  ]
12/name = "ground13"
12/texture = ExtResource( 1 )
12/tex_offset = Vector2( 0, 0 )
12/modulate = Color( 1, 1, 1, 1 )
12/region = Rect2( 100, 40, 20, 20 )
12/is_autotile = false
12/occluder_offset = Vector2( 10, 10 )
12/navigation_offset = Vector2( 10, 10 )
12/shapes = [  ]

     [remap]

path="res://fov_tilemap.gdc"
          ECFG
      _global_script_classes�                     class      
   FovTileMap        language      GDScript      path      res://fov_tilemap.gd      base      TileMap    _global_script_class_icons$            
   FovTileMap            application/config/name         Godot FOV Tilemaps     application/run/main_scene         res://main.tscn '   debug/gdscript/warnings/unused_argument             display/window/vsync/use_vsync          7   rendering/quality/intended_usage/framebuffer_allocation          >   rendering/quality/intended_usage/framebuffer_allocation.mobile          (   rendering/2d/snapping/use_gpu_pixel_snap         #   rendering/quality/2d/use_pixel_snap           