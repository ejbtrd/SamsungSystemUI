.class Lcom/android/wm/shell/draganddrop/DragTargetView$1;
.super Landroid/view/ViewOutlineProvider;
.source "DragTargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/DragTargetView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/draganddrop/DragTargetView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$1;->this$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$1;->this$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->access$000(Lcom/android/wm/shell/draganddrop/DragTargetView;)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
