.class Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;
.super Ljava/lang/Object;
.source "DividerSmartTip.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->requestShowPopUp(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;

.field final synthetic val$isExpanded:Z

.field final synthetic val$isOutSideTouchEnable:Z

.field final synthetic val$posX:I

.field final synthetic val$posY:I


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;IIZZ)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;

    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;->val$posX:I

    iput p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;->val$posY:I

    iput-boolean p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;->val$isExpanded:Z

    iput-boolean p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;->val$isOutSideTouchEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 75
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;->val$posX:I

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;->val$posY:I

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;->val$isExpanded:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip$1;->val$isOutSideTouchEnable:Z

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;->access$000(Lcom/android/wm/shell/legacysplitscreen/DividerSmartTip;IIZZ)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
