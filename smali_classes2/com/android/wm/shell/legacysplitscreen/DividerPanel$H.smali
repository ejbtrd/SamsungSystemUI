.class final Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;
.super Landroid/os/Handler;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerPanel;Landroid/os/Looper;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    .line 348
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 353
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerPanel$H;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->removeDividerPanel()V

    :goto_0
    return-void
.end method
