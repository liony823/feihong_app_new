class Regex {
  static final usernameReg = RegExp(
    r'^[\u4e00-\u9fa5a-zA-Z0-9_]{6,18}$',
  ); // 4-12位字符，可以有中文，不能包含非法字符
  static final nicknameReg = RegExp(r'^[^\s]{2,20}$'); // 2-20个字符

  static final passwordReg = RegExp(r'^[a-zA-Z0-9]{6,18}$'); // 6-18位字母或数字
}
