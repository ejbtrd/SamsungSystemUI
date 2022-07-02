.class public Lcom/android/systemui/edgelighting/settings/ResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResetReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private reset(Landroid/content/Context;)V
    .locals 4

    .line 51
    sget-boolean p0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING_TILE:Z

    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->initializeSettingValue(Landroid/content/ContentResolver;Z)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingThickness(Landroid/content/ContentResolver;I)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "edgelighting_recently_used_color"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const v2, -0xb37941

    const-string v3, "edgelighting_custom_color"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingTransparency(Landroid/content/ContentResolver;I)V

    .line 63
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v2, 0x64

    invoke-static {p0, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;I)V

    .line 66
    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveEdgeLightingActionEnable(Landroid/content/Context;Z)V

    .line 67
    invoke-static {p1, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveEdgeLightingDurationOption(Landroid/content/Context;I)V

    .line 68
    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->resetAppCustomColor(Landroid/content/Context;)V

    :try_start_0
    const-string p0, "notification"

    .line 73
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 72
    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    invoke-interface {p0}, Landroid/app/INotificationManager;->resetDefaultAllowEdgeLighting()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ResetReceiver"

    const-string/jumbo v0, "resetDefaultAllowEdgeLighting is failed"

    .line 78
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p0, "edge_lighting_settings"

    .line 81
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 82
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "version"

    .line 83
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "all_application"

    .line 84
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "enable_list"

    .line 85
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "edge_lighting_custom_text_color"

    .line 88
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 89
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ResetReceiver"

    if-eqz v0, :cond_0

    const-string p2, "onReceive : SOFT_RESET"

    .line 42
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/settings/ResetReceiver;->reset(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "onReceive : DEMO_RESET_STARTED"

    .line 45
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/settings/ResetReceiver;->reset(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
