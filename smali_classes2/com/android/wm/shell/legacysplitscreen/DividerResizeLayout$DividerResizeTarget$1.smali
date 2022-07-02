.class Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$1;
.super Landroid/view/ViewOutlineProvider;
.source "DividerResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$1;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    .line 685
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$1;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$1;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/graphics/Rect;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 686
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$1;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v1

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$1;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p1, v0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$1;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)I

    move-result p0

    int-to-float v6, p0

    move-object v1, p2

    .line 685
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
