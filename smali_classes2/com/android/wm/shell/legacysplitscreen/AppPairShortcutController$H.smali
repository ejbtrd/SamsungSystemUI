.class final Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController$H;
.super Landroid/os/Handler;
.source "AppPairShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;Landroid/os/Looper;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController$H;->this$0:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;

    .line 303
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 308
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 311
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController$H;->this$0:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->access$000(Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v1, "com.samsung.android.permission.ADD_PAIR_APP_SHORTCUT"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
