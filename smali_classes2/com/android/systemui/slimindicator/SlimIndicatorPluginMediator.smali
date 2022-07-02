.class public Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;
.super Ljava/lang/Object;
.source "SlimIndicatorPluginMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSPluginConnected:Z

.field private mLastDisconnectReason:I

.field private mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

.field private mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

.field private mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/slimindicator/SlimIndicatorManager;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 48
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    .line 52
    new-instance p2, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-direct {p2, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    .line 53
    iget-boolean p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->onPluginDisconnected()V

    .line 58
    :cond_0
    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-direct {p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    .line 61
    const-class p1, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/SPluginManager;

    const-class p2, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-interface {p1, p0, p2}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public isPluginConnected()Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    return p0
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->onPluginConnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;Landroid/content/Context;)V
    .locals 1

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPluginConnected() mIsSPluginConnected:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", plugin:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[QuickStar]SlimIndicatorPluginMediator"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz p2, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->register()V

    .line 72
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->onPluginConnected()V

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 75
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-interface {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->notifyPluginConnected()V

    if-eqz p1, :cond_1

    .line 78
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Please check app version."

    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    :goto_0
    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateExpandQsAtOnceResources()V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 37
    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->onPluginDisconnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;I)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPluginDisconnected() mIsSPluginConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", plugin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorPluginMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iput p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mLastDisconnectReason:I

    .line 93
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->unregister()V

    .line 94
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->onPluginDisconnected()V

    const/4 p2, 0x0

    .line 95
    iput-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 96
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-interface {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->notifyPluginDisconnected()V

    .line 99
    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->clearExpandQsAtOnceResources()V

    if-eqz p1, :cond_1

    .line 103
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Please check app version."

    .line 105
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
