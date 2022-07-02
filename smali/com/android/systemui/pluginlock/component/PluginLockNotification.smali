.class public Lcom/android/systemui/pluginlock/component/PluginLockNotification;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockNotification.java"


# static fields
.field private static final KEY_ICON_ONLY:Ljava/lang/String; = "lockscreen_minimizing_notification"

.field private static final KEY_NOTIFICATION_TYPE:Ljava/lang/String; = "notification_type"

.field private static final KEY_NOTIFICATION_VISIBILITY:Ljava/lang/String; = "notification_visibility"

.field private static final KEY_VISIBILITY:Ljava/lang/String; = "lock_screen_show_notifications"

.field private static final TAG:Ljava/lang/String; = "PluginLockNotification"

.field private static final UPDATE_LOCKSTAR_DATA:Ljava/lang/String; = "update_lockstar_data"

.field private static final UPDATE_LOCKSTAR_DATA_ITEM:Ljava/lang/String; = "update_lockstar_data_item"

.field private static final VALUE_CARD:I = 0x0

.field private static final VALUE_ICON_ONLY:I = 0x1


# instance fields
.field private mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field mContext:Landroid/content/Context;

.field private mIsDlsData:Z

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mUris:[Landroid/net/Uri;

.field private mVisibility:I


# direct methods
.method public static synthetic $r8$lambda$qEDl4pro0sJCX-pJ90g_V-Eg6f8(Lcom/android/systemui/pluginlock/component/PluginLockNotification;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "lockscreen_minimizing_notification"

    .line 35
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "lock_screen_show_notifications"

    .line 36
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, p2

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mUris:[Landroid/net/Uri;

    .line 190
    new-instance p2, Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockNotification;)V

    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mContext:Landroid/content/Context;

    .line 41
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method private getCurrentNotificationType()I
    .locals 2

    const-string v0, "lockscreen_minimizing_notification"

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result p0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNotificationType() getSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 6

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange() uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange() mCallbackValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mVisibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-wide v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 199
    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getCurrentNotificationType()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    const/4 v2, 0x1

    const-string v3, "lock_screen_show_notifications"

    .line 200
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSecure(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_2

    :cond_1
    const-string p0, "onChange() ignored"

    .line 201
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->updateLockStarStoredData(Landroid/net/Uri;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->recover()V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "onChange() wrong state"

    .line 195
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 153
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    return-void
.end method

.method private registerCallback(II)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerCallback() type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 177
    iput p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 179
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mUris:[Landroid/net/Uri;

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method private setNotificationType(I)V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNotificationType() value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", putSettings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "lockscreen_minimizing_notification"

    .line 164
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    return-void
.end method

.method private setNotificationVisibility(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNotificationVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockNotification"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "lock_screen_show_notifications"

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private unregisterCallback()V
    .locals 2

    const-string v0, "PluginLockNotification"

    const-string/jumbo v1, "unregisterCallback()"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 184
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 185
    iput v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-wide/16 v0, 0x0

    .line 186
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 187
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method private updateLockStarStoredData(Landroid/net/Uri;)V
    .locals 7

    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "lock_screen_show_notifications"

    .line 212
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "extras"

    const-string/jumbo v4, "update_lockstar_data_item"

    const-string/jumbo v5, "update_lockstar_data"

    const-string v6, "action"

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "notification_visibility"

    .line 215
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 216
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSecure(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v1, "lockscreen_minimizing_notification"

    .line 218
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 219
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "notification_type"

    .line 221
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getCurrentNotificationType()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 225
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateLockStarStoredData() bundle"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockNotification"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-class p0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->updateLockStarData(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 6

    const-string v0, "PluginLockNotification"

    const-string v1, "apply()"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 49
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getNotiType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 50
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    move-result v3

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply() state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", notiType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", notiVisibility:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    const-string p0, "apply() skip!"

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v4, -0x3

    if-ne v3, v4, :cond_1

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-eq v2, p1, :cond_2

    if-eqz v1, :cond_2

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getCurrentNotificationType()I

    move-result p1

    const/4 p2, 0x1

    const-string v3, "lock_screen_show_notifications"

    .line 65
    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSecure(Ljava/lang/String;I)I

    move-result p2

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply() Backup curType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", curVisibility: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Set notiType: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", notiVisibility: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    .line 73
    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 77
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->registerCallback(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockNotification"

    const-string/jumbo v1, "recover()"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 126
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 127
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    const/4 v0, -0x2

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationState(I)V

    return-void
.end method

.method public reset(Z)V
    .locals 3

    const-string v0, "PluginLockNotification"

    const-string/jumbo v1, "reset()"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->unregisterCallback()V

    if-nez p1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    move-result p1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationBackupVisibility()I

    move-result p1

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationBackupType()I

    move-result v1

    .line 144
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    .line 145
    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 148
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 4

    const-string v0, "PluginLockNotification"

    const-string/jumbo v1, "update()"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    move-result v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update() state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 99
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    if-eqz v2, :cond_0

    const-string/jumbo p0, "update() skip!"

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->unregisterCallback()V

    .line 107
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 108
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/NotificationData;->getNotiType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update() notiType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", visibility: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v2, :cond_2

    if-eqz p2, :cond_2

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    .line 112
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 113
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->registerCallback(II)V

    goto :goto_0

    :cond_2
    const-string p1, "disable & restore backup value "

    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationBackupVisibility()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationBackupType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 118
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    :goto_0
    return-void
.end method
