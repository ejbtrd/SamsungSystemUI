.class Lcom/android/wm/shell/draganddrop/SmartTip$1;
.super Ljava/lang/Object;
.source "SmartTip.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/draganddrop/SmartTip;->showIfPossible(IIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/SmartTip;

.field final synthetic val$direction:I

.field final synthetic val$isExpanded:Z

.field final synthetic val$posX:I

.field final synthetic val$posY:I


# direct methods
.method constructor <init>(Lcom/android/wm/shell/draganddrop/SmartTip;IIZI)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->this$0:Lcom/android/wm/shell/draganddrop/SmartTip;

    iput p2, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$posX:I

    iput p3, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$posY:I

    iput-boolean p4, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$isExpanded:Z

    iput p5, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 96
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->this$0:Lcom/android/wm/shell/draganddrop/SmartTip;

    iget v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$posX:I

    iget v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$posY:I

    iget-boolean v2, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$isExpanded:Z

    iget p0, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$direction:I

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/draganddrop/SmartTip;->access$000(Lcom/android/wm/shell/draganddrop/SmartTip;IIZI)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
