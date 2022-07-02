.class public Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;


# instance fields
.field mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field private mCurrentOrientation:I

.field private mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsMultiSIMBarHideByKnoxRequest:Z

.field private mIsMultiSIMBarShowOnQSPanel:Z

.field mParent:Lcom/android/systemui/qs/QSPanel;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsValueList:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 4

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    .line 71
    new-instance v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-array v0, v0, [Landroid/net/Uri;

    const-string v3, "emergency_mode"

    .line 83
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsValueList:[Landroid/net/Uri;

    .line 84
    new-instance v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 105
    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/multisim/MultiSIMController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 106
    invoke-virtual {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getCurrentData()Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 107
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)Z

    .line 110
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p2, v2, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 114
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget-object p2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 116
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string p2, "multi_sim_bar_show_on_qspanel"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->checkTelephonyuiRestrictions(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    return-void
.end method

.method private checkTelephonyuiRestrictions(Landroid/content/Context;)V
    .locals 6

    .line 231
    invoke-static {p1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object p1

    const-string v0, "com.samsung.android.app.telephonyui"

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 238
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "telephonyui_simcard_manager_data_preference"

    .line 239
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "hide"

    const/4 v4, 0x1

    const-string v5, "grayout"

    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "telephonyui_simcard_manager_call_preference"

    .line 243
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "telephonyui_simcard_manager_text_preference"

    .line 247
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 249
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    goto :goto_0

    .line 251
    :cond_6
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    .line 253
    :goto_0
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    .line 254
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    const-string v1, "multi_sim_bar_hide_by_knox_restrictions"

    .line 253
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    return-void
.end method

.method private updateBarVisibilities()V
    .locals 3

    .line 149
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BARCONTROLLER_MULTISIM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 151
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBarVisibilities "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSIMPreferredSlotBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->showBar(Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 202
    invoke-super {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->destroy()V

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->destroy()V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 212
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public getBarHeight()I
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMultiSimBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_panel_multi_sim_preffered_slot:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 136
    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mParent:Lcom/android/systemui/qs/QSPanel;

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateHeightMargins()V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 217
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_BARCONTROLLER_MULTISIM:Z

    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 166
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 167
    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCurrentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_1

    .line 168
    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCurrentOrientation:I

    .line 169
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarItem$Callback;->onBarHeightChanged()V

    :cond_1
    return-void
.end method

.method public onDataChanged(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    iget-boolean p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    if-eq v1, p1, :cond_0

    .line 223
    iput-boolean p1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTuningChanged() : key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSIMPreferredSlotBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "multi_sim_bar_show_on_qspanel"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 127
    invoke-static {p2, p1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    :cond_1
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 190
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->setExpanded(Z)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExpanded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mShowing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSIMPreferredSlotBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 192
    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz p1, :cond_0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->registerSimCardManagerCallback()V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->unRegisterSimCardManagerCallback()V

    :goto_0
    return-void
.end method

.method protected showBar(Z)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->onUIVisibilityChanged(Z)V

    return-void
.end method

.method public updateHeightMargins()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMultiSimBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 179
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
