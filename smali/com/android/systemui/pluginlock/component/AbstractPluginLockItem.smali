.class abstract Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.super Ljava/lang/Object;
.source "AbstractPluginLockItem.java"


# static fields
.field protected static final KEY_ACTION:Ljava/lang/String; = "action"

.field protected static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field static final TIME_DELAY_CALLBACK:I = 0x1f40

.field static final VALUE_CHANGED_BY_DYNAMIC:I = -0x3

.field static final VALUE_CHANGED_BY_USER:I = -0x2

.field static final VALUE_DEFAULT:I = -0x1


# instance fields
.field mCallbackRegisterTime:J

.field mCallbackValue:I

.field final mContext:Landroid/content/Context;

.field final mCr:Landroid/content/ContentResolver;

.field mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 28
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    return-void
.end method


# virtual methods
.method protected abstract apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
.end method

.method getClockBackupValue()I
    .locals 1

    .line 76
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getClock()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getClockState()I
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getClockState()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getNotificationBackupType()I
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationBackupType()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getNotificationBackupVisibility()I
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationBackupVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getNotificationState()I
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationState()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getSettingsSecure(Ljava/lang/String;I)I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getSettingsSystem(Ljava/lang/String;I)I
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getWallpaperDynamicBackupValue(I)I
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x2

    if-nez p0, :cond_0

    return v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperDynamic(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getWallpaperSourceBackupValue(I)I
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperSource(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getWallpaperTypeBackupValue(I)I
    .locals 1

    .line 148
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperType(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method putSettingsSecure(Ljava/lang/String;I)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method putSettingsSystem(Ljava/lang/String;I)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected abstract recover()V
.end method

.method protected abstract reset(Z)V
.end method

.method protected resetAll()V
    .locals 0

    return-void
.end method

.method setClockBackupValue(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClock(I)V

    if-ltz p1, :cond_0

    const/4 p1, -0x3

    .line 176
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClockState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 178
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClockState(I)V

    .line 180
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method setClockState(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClockState(I)V

    .line 165
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    return-void
.end method

.method setNotificationBackup(II)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationBackupType(Ljava/lang/Integer;)V

    .line 201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationBackupVisibility(Ljava/lang/Integer;)V

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 p1, -0x3

    .line 203
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 205
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationState(I)V

    .line 207
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method setNotificationState(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationState(I)V

    .line 190
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperBackup(II)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(I)V

    .line 272
    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(I)V

    .line 273
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperBackup(III)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(II)V

    .line 261
    invoke-virtual {v0, p1, p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(II)V

    .line 262
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperBackupValue(III)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(I)V

    .line 229
    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(I)V

    .line 230
    invoke-virtual {v0, p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(I)V

    .line 231
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperBackupValue(IIII)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(II)V

    .line 217
    invoke-virtual {v0, p1, p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(II)V

    .line 218
    invoke-virtual {v0, p1, p4}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(II)V

    .line 219
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperDynamicBackupValue(I)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(I)V

    .line 251
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperDynamicBackupValue(II)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(II)V

    .line 241
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperSourceBackupValue(I)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(I)V

    .line 293
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperSourceBackupValue(II)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperSource(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 282
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(II)V

    .line 283
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperTypeBackupValue(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(I)V

    .line 313
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperTypeBackupValue(II)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperType(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 302
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(II)V

    .line 303
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method protected abstract update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
.end method
