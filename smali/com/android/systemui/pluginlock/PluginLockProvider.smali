.class public Lcom/android/systemui/pluginlock/PluginLockProvider;
.super Landroid/content/ContentProvider;
.source "PluginLockProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.systemui.pluginlock.provider"

.field private static final FILL_WALLPAPER_DATA:Ljava/lang/String; = "fill_wallpaper_data"

.field private static final GET_DLS_DATA:Ljava/lang/String; = "get_dls_data"

.field private static final GET_LOCKSTAR_TASK_SHORTCUT_STATE:Ljava/lang/String; = "get_lockstar_task_shortcut_state"

.field private static final GET_NOTIFICATION_NUMBERS:Ljava/lang/String; = "get_notification_numbers"

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_ARG:Ljava/lang/String; = "arg"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final REMOVE_LOCKSTAR_TASK_SHORTCUT_LISTENER:Ljava/lang/String; = "remove_lockstar_task_shortcut_listener"

.field private static final SCREEN:Ljava/lang/String; = "screen"

.field private static final SOURCE:Ljava/lang/String; = "source"

.field private static final SOURCE_TYPE:Ljava/lang/String; = "source_type"

.field private static final TAG:Ljava/lang/String; = "PluginLockProvider"

.field private static final UPDATE_LOCKSTAR_TASK_SHORTCUT_STATE:Ljava/lang/String; = "update_lockstar_task_shortcut_state"

.field private static final WALLPAPER_TYPE:Ljava/lang/String; = "wallpaper_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private onEventReceived(Lcom/android/systemui/pluginlock/PluginLockManager;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getPluginLock()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 96
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PluginLockProvider"

    const-string v1, "call => onEventReceived"

    .line 98
    invoke-static {v0, v1, p1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-interface {p0, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onEventReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .line 45
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call: method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", arg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PluginLockProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "get_dls_data"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v5, "get_lockstar_task_shortcut_state"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "update_lockstar_task_shortcut_state"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "remove_lockstar_task_shortcut_listener"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v5, "fill_wallpaper_data"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v3, v6

    :goto_0
    const-string v5, "call method:"

    const-string v7, "extras"

    const-string v8, "arg"

    const-string v9, "action"

    packed-switch v3, :pswitch_data_0

    .line 79
    invoke-virtual {v1, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v8, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v7, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call bundle:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v4, p3, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {v4, p1, p3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "call arg:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v4, p1, p2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockProvider;->onEventReceived(Lcom/android/systemui/pluginlock/PluginLockManager;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_0
    const-string p0, "call: GET_DLS_DATA"

    .line 51
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getDynamicLockData()Ljava/lang/String;

    move-result-object p0

    const-string p1, "dynamicLockData"

    .line 52
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :pswitch_1
    invoke-virtual {v2, p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getShortcutTaskState(Ljava/lang/String;)Z

    move-result p3

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "isEnable"

    .line 61
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    invoke-virtual {v1, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v8, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockProvider;->onEventReceived(Lcom/android/systemui/pluginlock/PluginLockManager;Landroid/os/Bundle;)V

    goto :goto_1

    .line 56
    :pswitch_2
    invoke-virtual {v2, p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->updateShortcutTaskState(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeShortcutTaskListener()V

    goto :goto_1

    :pswitch_4
    const-string/jumbo p0, "screen"

    .line 72
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string/jumbo p1, "wallpaper_type"

    .line 73
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "source_type"

    .line 74
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v0, "source"

    .line 75
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 76
    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/PluginLockManager;->fillWallpaperData(IIILjava/lang/String;)V

    :cond_5
    :goto_1
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x502191fd -> :sswitch_4
        -0xd3bfee6 -> :sswitch_3
        0x5e253c6 -> :sswitch_2
        0x20434459 -> :sswitch_1
        0x3c1e0147 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
