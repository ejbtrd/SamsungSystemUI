.class Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$Impl;
.super Landroid/app/TaskStackListener;
.source "LegacySplitScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    .line 2162
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$Impl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFocusChanged(IZ)V
    .locals 1

    .line 2167
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$Impl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$1000(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2168
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$Impl;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateFocusedTaskWindowingMode(I)V

    :cond_0
    return-void
.end method
