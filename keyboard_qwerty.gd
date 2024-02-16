extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _input(e):
	get_node("a_key").button_pressed = Input.is_key_pressed(KEY_A)
	get_node("b_key").button_pressed = Input.is_key_pressed(KEY_B)
	get_node("c_key").button_pressed = Input.is_key_pressed(KEY_C)
	get_node("d_key").button_pressed = Input.is_key_pressed(KEY_D)
	get_node("e_key").button_pressed = Input.is_key_pressed(KEY_E)
	get_node("f_key").button_pressed = Input.is_key_pressed(KEY_F)
	get_node("g_key").button_pressed = Input.is_key_pressed(KEY_G)
	get_node("h_key").button_pressed = Input.is_key_pressed(KEY_H)
	get_node("i_key").button_pressed = Input.is_key_pressed(KEY_I)
	get_node("j_key").button_pressed = Input.is_key_pressed(KEY_J)
	get_node("k_key").button_pressed = Input.is_key_pressed(KEY_K)
	get_node("l_key").button_pressed = Input.is_key_pressed(KEY_L)
	get_node("m_key").button_pressed = Input.is_key_pressed(KEY_M)
	get_node("n_key").button_pressed = Input.is_key_pressed(KEY_N)
	get_node("o_key").button_pressed = Input.is_key_pressed(KEY_O)
	get_node("p_key").button_pressed = Input.is_key_pressed(KEY_P)
	get_node("q_key").button_pressed = Input.is_key_pressed(KEY_Q)
	get_node("r_key").button_pressed = Input.is_key_pressed(KEY_R)
	get_node("s_key").button_pressed = Input.is_key_pressed(KEY_S)
	get_node("t_key").button_pressed = Input.is_key_pressed(KEY_T)
	get_node("w_key").button_pressed = Input.is_key_pressed(KEY_W)
	get_node("x_key").button_pressed = Input.is_key_pressed(KEY_X)
	get_node("y_key").button_pressed = Input.is_key_pressed(KEY_Y)
	get_node("z_key").button_pressed = Input.is_key_pressed(KEY_Z)
	get_node("u_key").button_pressed = Input.is_key_pressed(KEY_U)
	get_node("v_key").button_pressed = Input.is_key_pressed(KEY_V)
	get_node("spacebar_key").button_pressed = Input.is_key_pressed(KEY_SPACE)
	get_node("0_key").button_pressed = Input.is_key_pressed(KEY_0)
	get_node("1_key").button_pressed = Input.is_key_pressed(KEY_1)
	get_node("2_key").button_pressed = Input.is_key_pressed(KEY_2)
	get_node("3_key").button_pressed = Input.is_key_pressed(KEY_3)
	get_node("4_key").button_pressed = Input.is_key_pressed(KEY_4)
	get_node("5_key").button_pressed = Input.is_key_pressed(KEY_5)
	get_node("6_key").button_pressed = Input.is_key_pressed(KEY_6)
	get_node("7_key").button_pressed = Input.is_key_pressed(KEY_7)
	get_node("8_key").button_pressed = Input.is_key_pressed(KEY_8)
	get_node("9_key").button_pressed = Input.is_key_pressed(KEY_9)
	get_node("shift_key").button_pressed = Input.is_key_pressed(KEY_SHIFT)
