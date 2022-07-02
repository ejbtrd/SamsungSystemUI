.class public Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;
.super Ljava/lang/Object;
.source "PluginLockDelegateSysUi.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "PluginLockDelegateSysUi"


# instance fields
.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

.field private mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# direct methods
.method public static synthetic $r8$lambda$StWJ7A-NeyaYM0ddrlWWMqAnHNQ(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->lambda$setDynamicLockData$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n4k_f4f170UTtmyTlXhrssMctHQ(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->lambda$updateDynamicLockData$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    return-void
.end method

.method private synthetic lambda$setDynamicLockData$0(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setDynamicLockDataInternal(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateDynamicLockData$1(Ljava/lang/String;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateDynamicLockData(Ljava/lang/String;)V

    return-void
.end method

.method private setDynamicLockDataInternal(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setDynamicLockData(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginLockItem(Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V

    return-void
.end method


# virtual methods
.method public dispatchEvent(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action"

    .line 182
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEvent() event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "action_data_clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz p1, :cond_1

    .line 191
    invoke-interface {p1}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onDataCleared()V

    .line 195
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_2

    .line 196
    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onDataCleared()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDynamicLockData()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public goToLockedShade()V
    .locals 2

    const-string v0, "PluginLockDelegateSysUi"

    const-string v1, "goToLockedShade"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->goToLockedShade()V

    return-void
.end method

.method public isSecure()Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isSecure()Z

    move-result p0

    return p0
.end method

.method public makeExpandedInvisible()V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->makeExpandedInvisible()V

    return-void
.end method

.method public onLaunchTransitionFadingEnded()V
    .locals 0

    return-void
.end method

.method public requestDismissKeyguard(Landroid/content/Intent;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDismissKeyguard() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    .line 126
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->requestDismissKeyguard(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setBiometricRecognition(Z)V
    .locals 2

    const-string v0, "PluginLockDelegateSysUi"

    const-string/jumbo v1, "setBiometricRecognition"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    .line 118
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateBiometricRecognition(Z)V

    :cond_0
    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDynamicLockData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo p0, "wrong request"

    .line 70
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setDynamicLockDataInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setLockscreenTimer(J)V
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockscreenTimer() sec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setLockscreenTimer(J)V

    return-void
.end method

.method public setPluginLockInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-nez p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setViewMode(I)V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    :cond_0
    return-void
.end method

.method public setPluginLockWallpaper(IILjava/lang/String;)V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPluginLockWallpaper() wallpaperType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaper(IILjava/lang/String;)V

    return-void
.end method

.method public setPluginWallpaper(IIILjava/lang/String;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPluginWallpaper() screen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaperType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaper(IIILjava/lang/String;)V

    return-void
.end method

.method public setPluginWallpaperHints(ILjava/lang/String;)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPluginWallpaperHints() screen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaperHint(ILjava/lang/String;)V

    return-void
.end method

.method public setRotationAllowed(Z)V
    .locals 0

    return-void
.end method

.method public setScreenOrientation(ZZ)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    .line 168
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setScreenOrientation(ZZ)V

    :cond_0
    return-void
.end method

.method public setTimeOut(Z)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateOverlayUserTimeout(Z)V

    return-void
.end method

.method public setViewMode(I)V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setViewMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    .line 161
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onViewModeChanged(I)V

    :cond_0
    return-void
.end method

.method public setWallpaperHints(Ljava/lang/String;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWallpaperHints() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    .line 176
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaperHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 2

    const-string v0, "PluginLockDelegateSysUi"

    const-string/jumbo v1, "setWallpaperUpdateCallback()"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getCurrentScreenType()I

    move-result v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDynamicLockData() screenType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dynamicLockData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockDelegateSysUi"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo p0, "updateDynamicLockData() wrong request"

    .line 137
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "updateDynamicLockData() skip"

    .line 141
    invoke-static {v2, p1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 145
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 146
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateDynamicLockData(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onUserActivity()V

    return-void
.end method
