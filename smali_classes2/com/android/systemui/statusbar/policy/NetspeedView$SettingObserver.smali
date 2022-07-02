.class final Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;
.super Ljava/lang/Object;
.source "NetspeedView.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final mSettingsValue:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo p1, "network_speed"

    .line 350
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->mSettingsValue:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$1;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 3

    .line 361
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowNetworkSpeedInStatusBar()Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$702(Z)Z

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange - sNetspeedSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mRegisterReceiver = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$800(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSpeedView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$800(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$900(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$802(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    .line 369
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$800(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$900(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$802(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    .line 373
    :cond_1
    new-instance p1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$1;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public registerToHelper()V
    .locals 4

    .line 353
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->mSettingsValue:Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public unregisterToHelper()V
    .locals 1

    .line 356
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method
