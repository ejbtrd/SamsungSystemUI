.class public Lcom/android/systemui/pluginlock/component/PluginLockShortcut;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockShortcut.java"


# static fields
.field private static final KEY_SHORTCUT_ENABLED:Ljava/lang/String; = "lockscreen_show_shortcut"

.field private static final KEY_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final TAG:Ljava/lang/String; = "PluginLockShortcut"

.field private static final UPDATE_LOCKSTAR_DATA:Ljava/lang/String; = "update_lockstar_data"

.field private static final UPDATE_LOCKSTAR_DATA_ITEM:Ljava/lang/String; = "update_lockstar_data_item"


# instance fields
.field private final mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mIsDlsData:Z

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShortcutVisibility:I


# direct methods
.method public static synthetic $r8$lambda$O86hs5DOe437-_zqQcwZt-a5eGM(Lcom/android/systemui/pluginlock/component/PluginLockShortcut;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    const/4 p2, -0x1

    .line 26
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 185
    new-instance p2, Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockShortcut;)V

    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 31
    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getShortcutBackup()I
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getShortcutBackupValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private getShortcutState()I
    .locals 1

    .line 127
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getShortcutState()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange() uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockShortcut"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-wide v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 193
    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const/4 v2, 0x1

    const-string v3, "lockscreen_show_shortcut"

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string p0, "onChange() ignored"

    .line 194
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->updateLockStarStoredData(Landroid/net/Uri;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->recover()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "onChange() wrong state"

    .line 189
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    .line 109
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    .line 110
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadData() mShortcutVisibility: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockShortcut"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerCallback(I)V
    .locals 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerCallback() value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockShortcut"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 174
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "lockscreen_show_shortcut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method private setShortcutBackup(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutBackup(I)V

    if-ltz p1, :cond_0

    const/4 p1, -0x3

    .line 156
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 158
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    .line 160
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method private setShortcutState(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    .line 144
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method private setShortcutVisibility(I)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShortcutVisibility : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockShortcut"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "lockscreen_show_shortcut"

    .line 167
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    return-void
.end method

.method private unregisterCallback()V
    .locals 2

    const-string v0, "PluginLockShortcut"

    const-string/jumbo v1, "unregisterCallback() "

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 180
    iput v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-wide/16 v0, 0x0

    .line 181
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 182
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method private updateLockStarStoredData(Landroid/net/Uri;)V
    .locals 4

    const-string v0, "lockscreen_show_shortcut"

    .line 204
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string/jumbo v2, "update_lockstar_data"

    .line 206
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "update_lockstar_data_item"

    const-string/jumbo v3, "shortcut_visibility"

    .line 208
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 209
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "extras"

    .line 210
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateLockStarStoredData() bundle"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PluginLockShortcut"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-class p0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->updateLockStarData(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    .line 37
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    move-result v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockShortcut"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string p0, "apply() skip!"

    .line 42
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_1

    .line 45
    :cond_1
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    const-string p1, "lockscreen_show_shortcut"

    const/4 p2, 0x1

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result p1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apply() curValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    .line 50
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 51
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apply() dlsVisible visibility: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 54
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->registerCallback(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockShortcut"

    const-string/jumbo v1, "recover()"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 86
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    const/4 v0, -0x2

    .line 87
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutState(I)V

    return-void
.end method

.method public reset(Z)V
    .locals 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset() reconnectReq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockShortcut"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->unregisterCallback()V

    if-nez p1, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    move-result p1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset() state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v0, :cond_0

    const/4 v2, -0x2

    if-eq p1, v2, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutBackup()I

    move-result p1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset() original: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 104
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    .line 60
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    move-result v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockShortcut"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 63
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    if-eqz v1, :cond_0

    const-string/jumbo p0, "update() skip!"

    .line 64
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_1

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->unregisterCallback()V

    .line 69
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update() visibility: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v1, :cond_3

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 73
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->registerCallback(I)V

    goto :goto_1

    .line 76
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutBackup()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 77
    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    :goto_1
    return-void
.end method
