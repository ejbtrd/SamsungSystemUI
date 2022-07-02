.class public final Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final SYSTEM_DIALOG_REASON_RECENT_APPS_KEY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/BaseActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string/jumbo p1, "reason"

    .line 34
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    const-string p1, "homekey"

    .line 35
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    const-string/jumbo p1, "recentapps"

    .line 36
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_RECENT_APPS_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceive "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 42
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 44
    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->onHomeKeyPressed()V

    goto :goto_0

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_RECENT_APPS_KEY:Ljava/lang/String;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 48
    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->onRecentAppsKeyPressed()V

    goto :goto_0

    :cond_2
    const-string p0, "android.intent.action.SCREEN_OFF"

    .line 51
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 52
    invoke-static {p1}, Lcom/android/systemui/controls/BaseActivity;->access$onScreenOff(Lcom/android/systemui/controls/BaseActivity;)V

    :cond_3
    :goto_0
    return-void
.end method
