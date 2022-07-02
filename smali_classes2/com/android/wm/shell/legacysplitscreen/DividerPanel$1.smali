.class Lcom/android/wm/shell/legacysplitscreen/DividerPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerPanel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->access$000(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;)Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
