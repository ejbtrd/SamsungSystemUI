.class public Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlimIndicatorReceiver.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsRegistered:Z

.field private mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "[QuickStar]SlimIndicatorReceiver"

    .line 39
    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mIsRegistered:Z

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    return-void
.end method

.method private isGoodLockPackageRemoved(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.samsung.android.goodlock"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.samsung.android.goodlock"

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.samsung.android.qstuner"

    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.samsung.systemui.lockstar"

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive - action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",  pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "iconblacklist"

    .line 69
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-virtual {v1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->setBlackListDBValue(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    const-string/jumbo v1, "rotate,headset"

    invoke-virtual {p2, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->setBlackListDBValue(Ljava/lang/String;)V

    .line 76
    :cond_5
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->isGoodLockPackageRemoved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 77
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->onPluginDisconnected()V

    :cond_6
    return-void
.end method

.method public register()V
    .locals 4

    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 88
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mIsRegistered:Z

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 94
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mIsRegistered:Z

    return-void
.end method
