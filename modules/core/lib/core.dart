/// 飞宏IM核心模块
/// 包含网络请求、数据处理、缓存和业务逻辑
library;

// 导出API
export 'api/api_client.dart';
export 'api/api_config.dart';
export 'api/apis.dart';

// 导出helper
export 'helper/view.dart';
export 'helper/fake.dart';

// 导出数据库
export 'database/database.dart';

// 导出模型
export 'models/base/country.dart';
export 'models/base/app_config.dart';
export 'models/base/app_module.dart';
export 'models/contact/contact.dart';
export 'models/contact/friend_apply.dart';
export 'models/applet/applet.dart';
export 'models/db/db_account.dart';
export 'models/channel/channel_info.dart';

// 导出状态管理
export 'providers/base/home_provider.dart';
export 'providers/base/locale_provider.dart';
export 'providers/base/setting_provider.dart';  

export 'providers/contact/contact_provider.dart';
export 'providers/contact/add_friend_provider.dart';
export 'providers/contact/friend_apply_provider.dart';
export 'providers/contact/search_user_provider.dart';
export 'providers/contact/user_profile_provider.dart';

export 'providers/auth/login_provider.dart';
export 'providers/auth/register_provider.dart';
export 'providers/auth/set_self_info_provider.dart';
export 'providers/auth/account_manager_provider.dart';
export 'providers/auth/set_self_security_provider.dart';
export 'providers/auth/verify_phone_provider.dart';

export 'providers/applet/applet_provider.dart';

export 'providers/chat/channel_provider.dart';

export 'providers/profile/set_avatar_provider.dart';
export 'providers/profile/set_nickname_provider.dart';
export 'providers/profile/set_intro_provider.dart';


// 导出仓库
export 'repositories/im_repository.dart';
export 'repositories/auth/auth_repository.dart';
export 'repositories/auth/account_repository.dart';
export 'repositories/contact/contact_repository.dart';

// 导出服务
export 'services/contact/contact_service.dart';
export 'services/auth/auth_service.dart';
export 'services/auth/account_service.dart';
export 'services/applet/applet_service.dart';
export 'services/im_service.dart';
export 'services/core_service.dart';

// 导出setup
export 'core_module.dart';
