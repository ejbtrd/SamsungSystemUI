.class public Lcom/android/systemui/doze/AODParameters;
.super Ljava/lang/Object;
.source "AODParameters.java"


# instance fields
.field private final mAODSettingStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field mDozeAlwaysOn:Z

.field private mDozeUiState:Z

.field private mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static synthetic $r8$lambda$mfcPUT3yN3ybnaIneofze2Wdjak(Lcom/android/systemui/doze/AODParameters;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/AODParameters;->onAODSettingStateChanged(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    .line 22
    new-instance v1, Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/AODParameters;)V

    iput-object v1, p0, Lcom/android/systemui/doze/AODParameters;->mAODSettingStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 25
    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/doze/AODParameters;->mPluginAODManagerLazy:Ldagger/Lazy;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/net/Uri;

    const-string v2, "aod_mode"

    .line 28
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p2, v3

    const-string v2, "aod_tap_to_show_mode"

    .line 29
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, p2, v0

    const-string v0, "aod_show_for_new_noti"

    .line 30
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p2, v2

    .line 27
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODParameters;->updateDozeAlwaysOn()V

    return-void
.end method

.method private isAODScheduleEnabled()Z
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getAODStartTime()I

    move-result v0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getAODEndTime()I

    move-result p0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    return v1

    .line 80
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    .line 81
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    .line 82
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v2

    if-ge v0, p0, :cond_1

    if-lt v3, v0, :cond_2

    if-ge v3, p0, :cond_2

    return v1

    :cond_1
    if-ge v3, v0, :cond_3

    if-ge v3, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private onAODSettingStateChanged(Landroid/net/Uri;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODParameters;->updateDozeAlwaysOn()V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    return-void
.end method


# virtual methods
.method public getAlwaysOn()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v0}, Lcom/android/systemui/doze/PluginAODManager;->needDozeAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 39
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    return p0
.end method

.method public getDozeAlwaysOn()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    return p0
.end method

.method public getDozeUiState()Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    return p0
.end method

.method public setDozeUiState(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    return-void
.end method

.method public updateDozeAlwaysOn()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODEnabled()Z

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAODTapToShowModeEnabled()Z

    move-result v1

    .line 57
    iget-object v2, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isAODShowForNewNotiModeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 59
    iput-boolean v3, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    goto :goto_1

    :cond_0
    if-nez v1, :cond_3

    if-eqz v2, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/doze/AODParameters;->isAODScheduleEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    iput-boolean v3, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    :goto_1
    return-void
.end method
