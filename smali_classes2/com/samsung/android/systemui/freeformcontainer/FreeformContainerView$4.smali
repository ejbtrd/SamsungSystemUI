.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$4;
.super Landroid/view/View$AccessibilityDelegate;
.source "FreeformContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updatePointerViewDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$4;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 728
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 729
    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 p1, 0x10

    const-string v0, "activate"

    invoke-direct {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method
