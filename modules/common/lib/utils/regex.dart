// ignore_for_file: non_constant_identifier_names

class Regex {
  static final USERNAME_PATTERN = RegExp(
    r'^[\u4e00-\u9fa5a-zA-Z0-9_]{6,18}$',
  ); // 4-12位字符，可以有中文，不能包含非法字符
  static final NICKNAME_PATTERN = RegExp(r'^[^\s]{2,20}$'); // 2-20个字符

  static final PASSWORD_PATTERN = RegExp(r'^[a-zA-Z0-9]{6,18}$'); // 6-18位字母或数字

// 正则表达式：验证手机号码
  static final RegExp PHONE_PATTERN = RegExp(
      r"^((13[0-9])|(14[0-9])|(15[^4,\D])|(16[0-9])|(17[0-9])|(18[0-9]))\d{8}$");
// 正则表达式：验证邮箱
  static final RegExp EMAIL_PATTERN = RegExp(r"\w+(\.\w)*@\w+(\.\w{2,3}){1,3}");

// 18位身份证正则
  static final RegExp ID18_PATTERN = RegExp(
      r"^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$");
// 15位身份证正则
  static final RegExp ID15_PATTERN = RegExp(
      r"^[1-9]\d{5}\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{2}[0-9Xx]$");

// 缓存 script 正则表达式对象
  static final RegExp SCRIPT_REGEX = RegExp(r"<script[^>]*?>[\s\S]*?</script>");
// 缓存 style 正则表达式对象
  static final RegExp STYLE_REGEX = RegExp(r"<style[^>]*?>[\s\S]*?</style>");
// 缓存 HTML 标签正则表达式对象
  static final RegExp HTML_REGEX = RegExp(r"<[^>]+>");
// 缓存空格回车换行符正则表达式对象
  static final RegExp SPACE_REGEX = RegExp(r"\s*|\t|\r|\n");
}
