.class public abstract Lcom/android/systemui/controls/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.kt"


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1
    .param p1    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "broadcastDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-string p1, "BaseActivity"

    .line 31
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->TAG:Ljava/lang/String;

    .line 33
    new-instance p1, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;-><init>(Lcom/android/systemui/controls/BaseActivity;)V

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    return-void
.end method

.method public static final synthetic access$onScreenOff(Lcom/android/systemui/controls/BaseActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/controls/BaseActivity;->onScreenOff()V

    return-void
.end method

.method private final onScreenOff()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final registerBR()V
    .locals 7

    .line 69
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 70
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 71
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/Object;)V

    return-void
.end method

.method private final unregisterBR()V
    .locals 2

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "broadcastReceiver not registered"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getTAG()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/controls/BaseActivity;->registerBR()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/controls/BaseActivity;->unregisterBR()V

    .line 65
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onHomeKeyPressed()V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onHomeKeyPressed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecentAppsKeyPressed()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onRecentAppsKeyPressed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
