import 'package:flutter/material.dart';

const sh_colorPrimary = Color(0xff1b5e20);
const sh_colorPrimaryDark = Color(0xFF66953A);
const sh_colorAccent = Color(0xFF66953A);

const sh_greenCgeci = Color.fromRGBO(0, 86, 98,1);

const sh_textColorPrimary = Color(0xFF212121);
const sh_textColorSecondary = Color(0xFF757575);
const sh_white = Color(0xFFffffff);
const sh_semi_white = Color(0xFFF8F7F7);
const sh_black = Color(0xFF000000);
const sh_view_color = Color(0xFFeaeaea);
const sh_transparent = Color(0xFF00000000);

const t1_view_color = Color(0XFFDADADA);

const sh_background_color = Color(0xFFFCFDFD);
const sh_editText_background = Color(0xFFF1F1F1);
const sh_tomato = Color(0xFFFF6347);
const sh_dots_color = Color(0xFFA5A5A5);
const sh_editText_background_active = Color(0xFFFDE9DA);
const sh_cat_1 = Color(0xFFFA4352);
const sh_cat_2 = Color(0xFF34B5C8);
const sh_cat_3 = Color(0xFFFED76D);
const sh_cat_4 = Color(0xFF0C5A93);
const sh_cat_5 = Color(0xFF3CA69B);
const sh_sidebar_background = Color(0xFFEFEEEF);
const sh_favourite_background = Color(0xFFFFEBEC);
const sh_favourite_unselected_background = Color(0xFFECECEC);
const sh_yellow = Color(0xFFFEBA39);
const sh_light_gray = Color(0xFFECECEC);
const sh_green = Color(0xff1b5e20);
const sh_red = Color(0xFFF61929);
const sh_light_green = Color(0xFF81C049);
const sh_more_infoHeading_background = Color(0xFFDDDDDD);
const sh_more_infoValue_background = Color(0xFFF3F3F3);
const sh_item_background = Color(0xFFEFF3F6);
const sh_bg_4star = Color(0xFF78c639);
const sh_light_grey = Color(0xFFFAFAFA);
const sh_checkbox_color = Color(0xFFDFDFDF);
const sh_itemText_background = Color(0xFFF8F8F8);
const sh_track_green = Color(0xFF64B931);
const sh_track_yellow = Color(0xFFECC134);
const sh_track_red = Color(0xFFF61929);
const sh_track_grey = Color(0xFFD3D3D3);
const sh_radiobuttonTint = Color(0xFF4353FA);
const sh_scratch_start_gradient = Color(0xFFe5e5e5);
const sh_scratch_end_gradient = Color(0xFFcccccc);
const sh_shadow_color = Color(0X95E9EBF0);


const BHColorPrimary = Color(0xFFff6e40);
const BHColorSecondary = Color(0xFF);
const BHAppTextColorPrimary = Color(0xFF212121);
const BHAppTextColorSecondary = Color(0xFF5A5C5E);
const BHBackGroundColor = Color(0xFFF0F4FF);
const BHGreyColor = Color(0xFF808080);
const BHAppShadowColor = Color(0x95E9EBF0);
const BHAppDividerColor = Color(0xFFDADADA);


const Color NBPrimaryColor = Color(0xFFFD5530);
const Color NBFacebookColor = Color(0xFF4265b0);


const t1_colorPrimary = Color(0XFFff8080);
const t1_colorPrimary_light = Color(0XFFFFEEEE);
const t1_colorPrimaryDark = Color(0XFFff8080);
const t1_colorAccent = Color(0XFFff8080);

const t1_app_background = Color(0XFFf8f8f8);

const t1_sign_in_background = Color(0XFFDADADA);

const t1_white = Color(0XFFffffff);
const t1_icon_color = Color(0XFF747474);
const t1_selected_tab = Color(0XFFFCE9E9);
const t1_red = Color(0XFFF10202);
const t1_blue = Color(0XFF1D36C0);
const t1_edit_text_background = Color(0XFFE8E8E8);
const t1_shadow = Color(0X70E2E2E5);
var t1White = materialColor(0XFFFFFFFF);
var t1TextColorPrimary = materialColor(0XFF212121);
const shadow_color = Color(0X95E9EBF0);
const t1_color_primary_light = Color(0XFFFCE8E8);
const t1_bg_bottom_sheet = Color(0XFFFFF1F1);

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

MaterialColor materialColor(colorHax) {
  return MaterialColor(colorHax, color);
}

MaterialColor colorCustom = MaterialColor(0XFF5959fc, color);