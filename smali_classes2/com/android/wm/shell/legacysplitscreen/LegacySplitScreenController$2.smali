.class Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$2;
.super Landroid/content/BroadcastReceiver;
.source "LegacySplitScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.samsung.android.extra.MULTI_WINDOW_ENABLED"

    const/4 v0, 0x1

    .line 500
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->initSplit()V

    :cond_0
    return-void
.end method
